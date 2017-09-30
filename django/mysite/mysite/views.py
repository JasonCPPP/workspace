from django.http import HttpResponse,Http404, HttpResponseRedirect
from django.template.loader import get_template
from django.shortcuts import render
from mysite.forms import ContactForm
from django.core.mail import send_mail, get_connection
import datetime
def hello(request):
    values = request.META
    html = []
    for k in sorted(values):
        html.append('<tr><td>%s</td><td>%s</td></tr>' % (k, values[k]))
    return HttpResponse('<table>%s</table>' % '\n'.join(html))
    #return HttpResponse('hello world %s' % request.path)   # 当前路径


def hours_ahead(request, offset):
    try:
        offset = int(offset)
    except ValueError:
        raise Http404()
    dt = datetime.datetime.now() + datetime.timedelta(hours=offset)
    html = "<html><body>In %s hour(s), it will be  %s.</body></html>" % (offset, dt)
    return HttpResponse(html)




def current_datetime(request):
    now = datetime.datetime.now()
    t = get_template('template.html')
    html = t.render({'current_date':now})  # after using get_template, the parameter of render be dirc not Context
    # return HttpResponse(html)
    return render(request,'template.html',{'current_date':now})
def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            con = get_connection('django.core.mail.backends.console.EmailBackend')
            send_mail(
                cd['subject'],
                cd['message'],
                cd.get('email', 'noreply@example.com'),
                ['siteowner@example.com'],
                connection=con
            )
            return HttpResponseRedirect('/contact/thanks/')
    else:
        form = ContactForm(initial={'subject':'I love your site'})

    return render(request, 'contact_form.html', {'form': form})
