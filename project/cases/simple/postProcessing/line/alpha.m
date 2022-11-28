clc
clear all
dir=0.1:0.1:7.9;
th=0.3;
% figure();
% hold on
time=dir';
H1=zeros(numel(dir),1);
H2=zeros(numel(dir),1);
H3=zeros(numel(dir),1);
H4=zeros(numel(dir),1);
% for i=1:numel(dir)
% direction=num2str(dir(i));
% cd (direction)
% file=load('s2_alpha.water_p_rgh.xy');
% [m, n]=size(file);
%     for k=1:m
%         if file(k,2)<th
%             H1(i)=(file(k,1)-1.4);
%             break
%         end
%     end
% % plot(file(:,1),file(:,2))
% % legend('4.5','5.5','6.5','7.5','8.5','9.5','10.5');
% cd ../
% end

for i=1:numel(dir)
direction=num2str(dir(i));
cd (direction)
file=load('s2_alpha.water.xy');
[m, n]=size(file);
    for k=1:m
        if file(k,2)<th
            H2(i)=(file(k,1)-0.25);
            break
        end
    end
% plot(file(:,1),file(:,2))
% legend('4.5','5.5','6.5','7.5','8.5','9.5','10.5');
cd ../
end

% for i=1:numel(dir)
% direction=num2str(dir(i));
% cd (direction)
% file=load('s3_alpha.water_p_rgh.xy');
% [m, n]=size(file);
%     for k=1:m
%         if file(k,2)<th
%             H3(i)=(file(k,1)-1.4);
%             break
%         end
%     end
% % plot(file(:,1),file(:,2))
% % legend('4.5','5.5','6.5','7.5','8.5','9.5','10.5');
% cd ../
% end
% 
% for i=1:numel(dir)
% direction=num2str(dir(i));
% cd (direction)
% file=load('s4_alpha.water_p_rgh.xy');
% [m, n]=size(file);
%     for k=1:m
%         if file(k,2)<th
%             H4(i)=(file(k,1)-1.4);
%             break
%         end
%     end
% % plot(file(:,1),file(:,2))
% % legend('4.5','5.5','6.5','7.5','8.5','9.5','10.5');
% cd ../
% end

% HH=0.1;
% eta=0.5*HH*(sin(

% result1=[time,H1];
result2=[time,H2];
% result3=[time,H3];
% result4=[time,H4];
% avgH=mean(H1);
hold on
% plot(result2(:,1),result2(:,2),'b','LineWidth',1.5)
plot(result2(:,1),result2(:,2),'b','LineWidth',1.5)

% plot(result3(:,1),result3(:,2),'k','LineWidth',1.5)
% plot(result4(:,1),result4(:,2),'g','LineWidth',1.5)
box on
grid on
xlabel('Time(s)','FontSize',14)
ylabel('Wave Height (m)','FontSize',14)
% legend('W.G. at 5m','W.G. at 10m','W.G. at 15m','W.G. at 20m','Location','southwest','FontSize',14)
% legend('W.G. at 5m','W.G. at 10m','Location','southwest','FontSize',14)
set(gca,'FontSize',14)
ylim([-.1 .2])
xlim([0.2 8])
% cd '4.5'
% file=load('s1_alpha.water_p_rgh.xy');
% plot(file(:,1),file(:,2))