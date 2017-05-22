    ${foreign_te_aba.ReturnDataType} return_${te_aba.GeneratedName}_val = ${te_mact_invocation}
    ${te_string.memmove}( return_${te_aba.GeneratedName}.${te_data_mbr.GeneratedName}[0], ${data_pointer}, ${size_of}(return_${te_aba.GeneratedName}_val) );
    return_${te_aba.GeneratedName}.${te_size_mbr.GeneratedName}[0] = ${size_of}(return_${te_aba.GeneratedName}_val);
    return return_${te_aba.GeneratedName};
