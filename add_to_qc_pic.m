function add_to_qc_pic(subject,figure)
% Adds the Matlab figure to the subject's QC file.

data_path = getenv('DATA_DIR');
qc_pic_fname = sprintf('%s/%s/qc_%s.ps',data_path,subject,subject);
if(~exist(qc_pic_fname,'file'))
    print(figure,'-painters','-bestfit','-r150','-noui','-dpsc',qc_pic_fname);
else
    print(figure,'-painters','-bestfit','-r150','-noui','-dpsc','-append',qc_pic_fname);
end
    
end
