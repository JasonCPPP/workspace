
import operator
import math

class vector3d(object):
    """3d vector class, supports vector and scalar operators,
       and also provides a bunch of high level functions
       """
    __slots__ = ['x', 'y','z']

    def __init__(self, x_or_pair=(0.,0.,0.), y = None,z = None):
        if y == None:
            self.x = x_or_pair[0]
            self.y = x_or_pair[1]
            self.z = x_or_pair[2]
        else:
            self.x = x_or_pair
            self.y = y
            self.z = z


    def __len__(self):
        return 3

    def __getitem__(self, key):
        if key == 0:
            return self.x
        elif key == 1:
            return self.y
        elif key==2:
            return self.z
        else:
            raise IndexError("Invalid subscript "+str(key)+" to vector3d")

    def __setitem__(self, key, value):
        if key == 0:
            self.x = value
        elif key == 1:
            self.y = value
        elif key == 2:
            self.z = value
        else:
            raise IndexError("Invalid subscript "+str(key)+" to vector3d")

    # String representaion (for debugging)
    def __repr__(self):
        return  'vector3d(%s, %s, %s)' % (self.x, self.y, self.z)

    # Comparison
    def __eq__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 3:
            return self.x == other[0] and self.y == other[1] and self.z ==other[3]
        else:
            return False

    def __ne__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 2:
            return self.x != other[0] or self.y != other[1] or self.z != other[2]
        else:
            return True

    def __nonzero__(self):
        return bool(self.x or self.y or self.z)

    # Generic operator handlers
    def _o2(self, other, f):
        "Any two-operator operation where the left operand is a vector3d"
        if isinstance(other, vector3d):
            return vector3d(f(self.x, other.x),
                         f(self.y, other.y), f(self.z, other.z))
        elif (hasattr(other, "__getitem__")):
            return vector3d(f(self.x, other[0]),
                         f(self.y, other[1]),f(self.z,other[2]))
        else:
            return vector3d(f(self.x, other),
                         f(self.y, other),f(self.z,other))

    def _r_o2(self, other, f):
        "Any two-operator operation where the right operand is a vector3d"
        if (hasattr(other, "__getitem__")):
            return vector3d(f(other[0], self.x),
                         f(other[1], self.y),f(other[2],self.z))
        else:
            return vector3d(f(other, self.x),
                         f(other, self.y),f(other,self.z))

    def _io(self, other, f):
        "inplace operator"
        if (hasattr(other, "__getitem__")):
            self.x = f(self.x, other[0])
            self.y = f(self.y, other[1])
            self.z = f(self.z, other[2])
        else:
            self.x = f(self.x, other)
            self.y = f(self.y, other)
            self.z = f(self,z, other)
        return self

    # Addition
    def __add__(self, other):
        if isinstance(other, vector3d):
            return vector3d(self.x + other.x, self.y + other.y,self.z+ other.z)
        elif hasattr(other, "__getitem__"):
            return vector3d(self.x + other[0], self.y + other[1],sef.z+other[2])
        else:
            return vector3d(self.x + other, self.y + other,self.z+other)
    __radd__ = __add__

    def __iadd__(self, other):
        if isinstance(other, vector3d):
            self.x += other.x
            self.y += other.y
            self.z += other.z
        elif hasattr(other, "__getitem__"):
            self.x += other[0]
            self.y += other[1]
            self.z += other[2]
        else:
            self.x += other
            self.y += other
            self.z += other
        return self
    def from_point(vector_1,vector_2):
        return vector3d(vector_2[0]-vector_1[0],vector_2[1]-vector_1[1],vector_2[2]-vector_1[2])
    # Subtraction
    def __sub__(self, other):
        if isinstance(other, vector3d):
            return vector3d(self.x - other.x, self.y - other.y,self.z-other.z)
        elif (hasattr(other, "__getitem__")):
            return vector3d(self.x - other[0], self.y - other[1],self.z-other[2])
        else:
            return vector3d(self.x - other, self.y - other,self.z-other)
    def __rsub__(self, other):
        if isinstance(other, vector3d):
            return vector3d(other.x - self.x, other.y - self.y,other.z-self.z)
        if (hasattr(other, "__getitem__")):
            return vector3d(other[0] - self.x, other[1] - self.y,other[2]-self.z)
        else:
            return vector3d(other - self.x, other - self.y,other-self.z)
    def __isub__(self, other):
        if isinstance(other, vector3d):
            self.x -= other.x
            self.y -= other.y
            self.z -= other.z
        elif (hasattr(other, "__getitem__")):
            self.x -= other[0]
            self.y -= other[1]
            self.z -= other[2]
        else:
            self.x -= other
            self.y -= other
            self.z -= other
        return self

    # Multiplication
    def __mul__(self, other):
        if isinstance(other, vector3d):
            return vector3d(self.x*other.x, self.y*other.y, self.z*other.z)
        if (hasattr(other, "__getitem__")):
            return vector3d(self.x*other[0], self.y*other[1] ,self.z*other[2])
        else:
            return vector3d(self.x*other, self.y*other ,self.z*other)
    __rmul__ = __mul__

    def __imul__(self, other):
        if isinstance(other, vector3d):
            self.x *= other.x
            self.y *= other.y
            self.z *= other.z
        elif (hasattr(other, "__getitem__")):
            self.x *= other[0]
            self.y *= other[1]
            self.z *= other[2]
        else:
            self.x *= other
            self.y *= other
            self.z *= other
        return self

    # Division
    def __div__(self, other):
        return self._o2(other, operator.div)
    def __rdiv__(self, other):
        return self._r_o2(other, operator.div)
    def __idiv__(self, other):
        return self._io(other, operator.div)

    def __floordiv__(self, other):
        return self._o2(other, operator.floordiv)
    def __rfloordiv__(self, other):
        return self._r_o2(other, operator.floordiv)
    def __ifloordiv__(self, other):
        return self._io(other, operator.floordiv)

    def __truediv__(self, other):
        return self._o2(other, operator.truediv)
    def __rtruediv__(self, other):
        return self._r_o2(other, operator.truediv)
    def __itruediv__(self, other):
        return self._io(other, operator.floordiv)

    # Modulo
    def __mod__(self, other):
        return self._o2(other, operator.mod)
    def __rmod__(self, other):
        return self._r_o2(other, operator.mod)

    def __divmod__(self, other):
        return self._o2(other, operator.divmod)
    def __rdivmod__(self, other):
        return self._r_o2(other, operator.divmod)

    # Exponentation
    def __pow__(self, other):
        return self._o2(other, operator.pow)
    def __rpow__(self, other):
        return self._r_o2(other, operator.pow)

    # Bitwise operators
    def __lshift__(self, other):
        return self._o2(other, operator.lshift)
    def __rlshift__(self, other):
        return self._r_o2(other, operator.lshift)

    def __rshift__(self, other):
        return self._o2(other, operator.rshift)
    def __rrshift__(self, other):
        return self._r_o2(other, operator.rshift)

    def __and__(self, other):
        return self._o2(other, operator.and_)
    __rand__ = __and__

    def __or__(self, other):
        return self._o2(other, operator.or_)
    __ror__ = __or__

    def __xor__(self, other):
        return self._o2(other, operator.xor)
    __rxor__ = __xor__

    # Unary operations
    def __neg__(self):
        return vector3d(operator.neg(self.x), operator.neg(self.y), operator.neg(self.z))

    def __pos__(self):
        return vector3d(operator.pos(self.x), operator.pos(self.y), operator.neg(self.z))

    def __abs__(self):
        return vector3d(abs(self.x), abs(self.y), abs(self.z))

    def __invert__(self):
        return vector3d(-self.x, -self.y, -self.z)

    # vectory functions
    def get_length_sqrd(self):
        return self.x**2 + self.y**2 + self.z**2

    def get_length(self):
        return math.sqrt(self.x**2 + self.y**2 + self.z**2)
    def __setlength(self, value):
        length = self.get_length()
        self.x *= value/length
        self.y *= value/length
        self.z *= value/length
    length = property(get_length, __setlength, None, "gets or sets the magnitude of the vector")
    '''
    def rotate(self, angle_degrees):
        radians = math.radians(angle_degrees)
        cos = math.cos(radians)
        sin = math.sin(radians)
        x = self.x*cos - self.y*sin
        y = self.x*sin + self.y*cos
        self.x = x
        self.y = y

    def rotated(self, angle_degrees):
        radians = math.radians(angle_degrees)
        cos = math.cos(radians)
        sin = math.sin(radians)
        x = self.x*cos - self.y*sin
        y = self.x*sin + self.y*cos
        return vector3d(x, y)

    def get_angle(self):
        if (self.get_length_sqrd() == 0):
            return 0
        return math.degrees(math.atan2(self.y, self.x))

    def __setangle(self, angle_degrees):
        self.x = self.length
        self.y = 0
        self.rotate(angle_degrees)
    angle = property(get_angle, __setangle, None, "gets or sets the angle of a vector")
    '''
    def get_angle_between(self, other):
        len_1 = self.get_length_sqrd();
        len_2 = other.get_length_sqrd();
        dot = self.x*other[0] + self.y*other[1]+self.z*other[2]
        cos = dot/(len1*len2);
        return math.degrees(math.acos(cos))

    def normalized (self):
        length = self.length
        if length != 0:
            return self/length
        return vector3d(self)

    def normalize_return_length(self):
        length = self.length
        if length != 0:
            self.x /= length
            self.y /= length
            self.z /= length
        return length

    def if_perpendicular(self,other):
        return self.dot(other)==0

    def dot(self, other):
        return float(self.x*other[0] + self.y*other[1] + self.z*other[2])

    def get_distance(self, other):
        return math.sqrt((self.x - other[0])**2 + (self.y - other[1])**2 + (self.z - other[2])**2 )

    def get_dist_sqrd(self, other):
        return (self.x - other[0])**2 + (self.y - other[1])**2 + (self.z - other[2])**2

    def projection(self, other):  # 投影
        other_length = math.sqrt(other[0]*other[0] + other[1]*other[1] +other[2]*other[2])
        projected_length_times_other_length = self.dot(other)
        return projected_length_times_other_length/other_length

    def cross(self, other):   # 叉乘
        return vector3d(self.y*other[2] - self.z*other[1],self.z*other[0]-self.x*other[2],self.x*other[1]-self.y*other[0])

    def interpolate_to(self, other, range):  #
        return vector3d(self.x + (other[0] - self.x)*range, self.y + (other[1] - self.y)*range, self.z + (other[2]-self.z)*range)
    '''
    def convert_to_basis(self, x_vector, y_vector， z_vector):  # 分解成用着两个基底表示的坐标。
        return vector3d(self.dot(x_vector)/x_vector.get_length_sqrd(), self.dot(y_vector)/y_vector.get_length_sqrd())
    '''

    def __getstate__(self):
        return [self.x, self.y, self.z]

    def __setstate__(self, dict):
        self.x, self.y ,self.z= dict
