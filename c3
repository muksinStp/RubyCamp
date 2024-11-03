function angka(num) {
    const penomoranRomawi = [
        {value: 1000, symbol: 'M' },
        { value: 900, symbol: 'CM' },
        { value: 500, symbol: 'D' },
        { value: 400, symbol: 'CD' },
        { value: 100, symbol: 'C' },
        { value: 90, symbol: 'XC' },
        { value: 50, symbol: 'L' },
        { value: 40, symbol: 'XL' },
        { value: 10, symbol: 'X' },
        { value: 9, symbol: 'IX' },
        { value: 5, symbol: 'V' },
        { value: 4, symbol: 'IV' },
        { value: 1, symbol: 'I' },
    ]
//array penomoran romawi adalah daftar untuk konversi angka ke romawi
    
    let result = ''; //variable result untuk menyimpan hasil konversi angka ke romawi berupa angka romawi
    for (let i = 0; i< penomoranRomawi.length;i++) {// jika loop for true maka lanjut ke while (array)
        while (num >=penomoranRomawi[i].value) {// untuk menghitung objek (nilai didalam array)
            result += penomoranRomawi[i].symbol;// untuk menambahkan angka romawi
            num -= penomoranRomawi[i].value;// untuk mengurangi angka
        }
    }

    return result;
}

console.log("script Testing  untuk konversi romawi\n")
console.log("input  |expected | result");
console.log("-------|---------|-------");
console.log("4      | IV      | ", angka (4));
console.log("9      | IX      | ", angka (9));
console.log("13     | XIII    | ", angka (13));
console.log("1453   | MCDLIII | ", angka (1453));
console.log("1646   | MDCXLVI | ", angka (1646));



/*
for =0<13===> true, maka lanjut ke while
while = 7>=1000 ===> false, maka keluar dari while dan kembali ke for
for =1<13===> true, maka lanjut ke while
while = 7>=900 ===> false, maka keluar dari while dan kembali ke for begitu seterusnya samapai i=11
for = 10<13===> true, maka lanjut ke while
while = 7>=5===> true, maka lanjut ke result += 'V'
lanjut ke num -= 7-5 = 2 berarti num sisa 2 kembali lagi ke for untuk menghabisi num yang sisa 2
for = 11<13===> true, maka lanjut ke while
while = 2>=4 ===> false, maka keluar dari while dan kembali ke for dan mendapati true pada i=12
for = 12<13===> true, maka lanjut ke while
while = 2>=1 ===> true, maka lanjut ke result += 'I, SEHINGGA total hasilnya VI dan kembali lagi ke for untuk menterjemahkan num=1
dan bernilai true pada indek ke 12
for = 12<13===> true, maka lanjut ke while
while = 1>=1 ===> true, maka lanjutkan ke result += 'I' sehingga total hasilnya VII dan kembali lagi ke for untuk menterjemahkan num=0
for = 12<13===> true, maka lanjut ke while
while = 0>=1 ===> false, maka keluar dari while dan perhitungan berhenti

*/
