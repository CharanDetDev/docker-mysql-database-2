
SELECT * FROM districts WHERE id = 302202;
SELECT * FROM amphures WHERE id = 236;
SELECT * FROM provinces WHERE id = 19;
SELECT * FROM geographies WHERE id = 3;
SELECT * FROM districts AS dstc
LEFT JOIN amphures AS amph ON amph.id = dstc.amphure_id
LEFT JOIN provinces prv ON prv.id = amph.province_id
LEFT JOIN geographies gogph ON gogph.id = prv.geography_id
WHERE dstc.id = 302202;
SELECT 
    dstc.id AS DistrictID,
    dstc.name_th AS DistrictName,
    amph.id AS AmphureID   ,
    amph.name_th AS AmphureName ,
    dstc.zip_code AS ZipCode     ,
    prv.id AS ProvinceID  ,
    prv.name_th AS ProvinceName ,
    gogph.id AS GeographieID ,
    gogph.name AS GeographieName 
FROM districts AS dstc
LEFT JOIN amphures AS amph ON amph.id = dstc.amphure_id
LEFT JOIN provinces prv ON prv.id = amph.province_id
LEFT JOIN geographies gogph ON gogph.id = prv.geography_id
WHERE dstc.id = 302202;

