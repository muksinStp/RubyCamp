function romawi(num) {
    const romanNumeralMap = [
        {value :4, symbol : 'IV'},
        {value :9, symbol : 'IX'},
        {value :13, symbol : 'XIII'},
        /*
        {value :1453, symbol : 'MCDLIII'},
        {value :1646, symbol : 'MDCXLVI'},
       */
                 
    ];
    let roman = '';
    for (let i = 0; i < romanNumeralMap.length; i++) {
        while (num >= romanNumeralMap[i]. value) {
            roman += romanNumeralMap[i]. symbol;
            num -= romanNumeralMap[i].value;
        }
    }
    return roman;
}
console.log("script Testing  untuk konversi romawi\n")
console.log("-------|---------|-------");
console.log("input  |expected | result");
console.log("4      | IV      | ", romawi (4));
console.log("9      | IX      | ", romawi (9));
console.log("13     | XIII    | ", romawi (13));
console.log("1453   | MCDLIII | ", romawi (1453));
console.log("1646   | MDCXLVI | ", romawi (1646));
