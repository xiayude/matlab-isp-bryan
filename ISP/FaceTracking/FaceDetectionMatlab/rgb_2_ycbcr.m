function    ImgYCbCr = rgb_2_ycbcr( ImgRGB )

RGB2YCBCR = [0.2990  0.5870  0.1140; ...
            -0.1687 -0.3313  0.5000; ...
             0.5000 -0.4187 -0.0813];
          
ImgYCbCr(:,:,1) = round( reshape( RGB2YCBCR(1,:) * ...
                                    [reshape(ImgRGB(:,:,1),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,2),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,3),1,size(ImgRGB,1)*size(ImgRGB,2))], ...
                                 size(ImgRGB,1), size(ImgRGB,2) ) );

ImgYCbCr(:,:,2) = round( reshape( RGB2YCBCR(2,:) * ...
                                    [reshape(ImgRGB(:,:,1),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,2),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,3),1,size(ImgRGB,1)*size(ImgRGB,2))], ...
                                 size(ImgRGB,1), size(ImgRGB,2) ) );

ImgYCbCr(:,:,3) = round( reshape( RGB2YCBCR(3,:) * ...
                                    [reshape(ImgRGB(:,:,1),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,2),1,size(ImgRGB,1)*size(ImgRGB,2));  ...
                                     reshape(ImgRGB(:,:,3),1,size(ImgRGB,1)*size(ImgRGB,2))], ...
                                 size(ImgRGB,1), size(ImgRGB,2) ) );


