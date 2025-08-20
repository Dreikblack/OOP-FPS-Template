---@meta
---@class Math

----------------------------
-- Functions
----------------------------

---@param value number
---@return number
function ACos(value) end

---@param |Description Parameter
function ACos(|Description) end

function ACos() end

---@param |thecosinevalue value
function ACos(|thecosinevalue) end

---@param value number
---@return number
function ASin(value) end

---@param |Description Parameter
function ASin(|Description) end

function ASin() end

---@param |sinevalue value
function ASin(|sinevalue) end

---@param value number
---@return number
function ATan(value) end

---@param y number
---@param x number
---@return number
function ATan(y, x) end

---@param value number
---@return number
function Abs(value) end

---@param rgba number
---@return number
function Alpha(rgba) end

---@param |Description Parameter
function Alpha(|Description) end

function Alpha() end

---@param |ThepackedRGBAvalue. rgba
function Alpha(|ThepackedRGBAvalue.) end

---@param rgba number
---@return number
function Blue(rgba) end

---@param |Description Parameter
function Blue(|Description) end

function Blue() end

---@param |ThepackedRGBAvalue. rgba
function Blue(|ThepackedRGBAvalue.) end

---@param n number
---@return number
function Ceil(n) end

---@param number value:
---@param number minimum:
---@param number:number maximum:
function Clamp(number, number, number:number) end

function Clamp() end

---@param thevaluetoconstrain. value:
function Clamp(thevaluetoconstrain.) end

---@param thelowerlimitofthereturnvalue. minimum:
function Clamp(thelowerlimitofthereturnvalue.) end

---@param theupperlimitofthereturnvalue. maximum:
function Clamp(theupperlimitofthereturnvalue.) end

---@param number:number angle:
function Cos(number:number) end

---@param angle angle:
---@param degrees in
function Cos(angle, degrees) end

---@param hex string
---@return number
function Dec(hex) end

---@param |Description Parameter
function Dec(|Description) end

function Dec() end

---@param |hexadecimalnumber hex
function Dec(|hexadecimalnumber) end

---@param angle number
---@return number
function Degrees(angle) end

---@param |Description Parameter
function Degrees(|Description) end

function Degrees() end

---@param |angleinradians angle
function Degrees(|angleinradians) end

---@param angle0 number
---@param angle1 number
---@return number
function DeltaAngle(angle0, angle1) end

---@param n number
---@return number
function Floor(n) end

---@param rgba number
---@return number
function Green(rgba) end

---@param |Description Parameter
function Green(|Description) end

function Green() end

---@param |ThepackedRGBAvalue. rgba
function Green(|ThepackedRGBAvalue.) end

---@param dec number
---@return string
function Hex(dec) end

---@param value0 number
---@param value1 number
---@return number
function Max(value0, value1) end

---@param value0 number
---@param value1 number
---@return number
function Min(value0, value1) end

---@param value0 number
---@param value1 number
---@param d number
---@return number
function Mix(value0, value1, d) end

---@param angle0 number
---@param angle1 number
---@param d number
---@return number
function MixAngle(angle0, angle1, d) end

---@param value number
---@param divisor number
---@return number
function Mod(value, divisor) end

---@param start number
---@param stop number
---@param amount number
---@return number
function MoveTowards(start, stop, amount) end

---@param angle number
---@return number
function Radians(angle) end

---@param maxima number
---@return number
function Random(maxima) end

---@param minima number
---@param maxima number
---@return number
function Random(minima, maxima) end

---@param intrgba` unsigned
---@return `unsigned
function Red(intrgba`) end

---@param r number
---@param g number
---@param b number
---@param a number
---@return number
function Rgba(r, g, b, a) end

---@param f number
---@return number
function Round(f) end

---@param seed number
function SeedRandom(seed) end

---@param |Description Parameter
function SeedRandom(|Description) end

function SeedRandom() end

---@param |randomsseedtoset seed
function SeedRandom(|randomsseedtoset) end

---@param angle number
---@return number
function Sin(angle) end

---@param |Description Parameter
function Sin(|Description) end

function Sin() end

---@param |angle angle
---@param degrees in
function Sin(|angle, degrees) end

---@return number
function Tan() end

---@param aabb Aabb
---@param src Mat4
---@param dst Mat4
---@param exact boolean
---@return Aabb
function TransformAabb(aabb, src, dst, exact) end

---@param aabb xAabb
---@param src Entity
---@param dst Entity
---@param exact boolean
---@return Aabb
function TransformAabb(aabb, src, dst, exact) end

---@param |Description Parameter
function TransformAabb(|Description) end

function TransformAabb() end

---@param |boundingboxtotransform aabb
function TransformAabb(|boundingboxtotransform) end

---@param |source4x4matrixorentity src
function TransformAabb(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformAabb(|destination4x4matrixorentity) end

---@param |ifsettotrueamoreaccuratebutslowertestisperformedthatcanresultinatightervolume exact
function TransformAabb(|ifsettotrueamoreaccuratebutslowertestisperformedthatcanresultinatightervolume) end

---@param n Vec3
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformNormal(n, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformNormal(x, y, z, src, dst) end

---@param n Vec3
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformNormal(n, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformNormal(x, y, z, src, dst) end

---@param |Description Parameter
function TransformNormal(|Description) end

function TransformNormal() end

---@param |normaltotransform z
---@return n,
function TransformNormal(|normaltotransform) end

---@param |source4x4matrixorentity src
function TransformNormal(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformNormal(|destination4x4matrixorentity) end

---@param p Plane
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformPlane(p, src, dst) end

---@param x number
---@param y number
---@param z number
---@param d number
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformPlane(x, y, z, d, src, dst) end

---@param p Plane
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformPlane(p, src, dst) end

---@param x number
---@param y number
---@param z number
---@param d number
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformPlane(x, y, z, d, src, dst) end

---@param |Description Parameter
function TransformPlane(|Description) end

function TransformPlane() end

---@param |3Dplanetotransform d
---@return p,
function TransformPlane(|3Dplanetotransform) end

---@param |source4x4matrixorentity src
function TransformPlane(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformPlane(|destination4x4matrixorentity) end

---@param point Vec3
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformPoint(point, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformPoint(x, y, z, src, dst) end

---@param point Vec3
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformPoint(point, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformPoint(x, y, z, src, dst) end

---@param |Description Parameter
function TransformPoint(|Description) end

function TransformPoint() end

---@param |positiontotransform z
---@return point,
function TransformPoint(|positiontotransform) end

---@param |source4x4matrixorentity src
function TransformPoint(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformPoint(|destination4x4matrixorentity) end

---@param v Vec3
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformRotation(v, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformRotation(x, y, z, src, dst) end

---@param rotation Vec3
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformRotation(rotation, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformRotation(x, y, z, src, dst) end

---@param rotation Quat
---@param src Mat4
---@param dst Mat4
---@return Quat
function TransformRotation(rotation, src, dst) end

---@param rotation Quat
---@param src Entity
---@param dst Entity
---@return Quat
function TransformRotation(rotation, src, dst) end

---@param |Description Parameter
function TransformRotation(|Description) end

function TransformRotation() end

---@param |Eulerorquaternionrotationtotransform z
---@return rotation,
function TransformRotation(|Eulerorquaternionrotationtotransform) end

---@param |source4x4matrixorentity src
function TransformRotation(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformRotation(|destination4x4matrixorentity) end

---@param v Vec3
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformVector(v, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Mat4
---@param dst Mat4
---@return Vec3
function TransformVector(x, y, z, src, dst) end

---@param v Vec3
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformVector(v, src, dst) end

---@param x number
---@param y number
---@param z number
---@param src Entity
---@param dst Entity
---@return Vec3
function TransformVector(x, y, z, src, dst) end

---@param |Description Parameter
function TransformVector(|Description) end

function TransformVector() end

---@param |positiontotransform z
---@return v,
function TransformVector(|positiontotransform) end

---@param |source4x4matrixorentity src
function TransformVector(|source4x4matrixorentity) end

---@param |destination4x4matrixorentity dst
function TransformVector(|destination4x4matrixorentity) end

