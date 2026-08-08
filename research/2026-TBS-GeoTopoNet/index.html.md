# Predicting short-term urban bike sharing demand in a coupled continuous and network space - Research

> To predict where city crowds are heading, is knowing what's nearby enough? This study shows that teaching AI to "look around" neighborhoods and "explore along the road" of transit networks sharpens predictions. Capturing these connections paints a complete picture of how we actually move.

[← Back to Research](/research)

# Predicting short-term urban bike sharing demand in a coupled continuous and network space

**Authors:** S. Liang, Y. Xu, G. Li, X. Zhang, Q. Li

**Published:** Travel Behaviour and Society, 2026, Vol. 42, pp. 101152

[Read online](/research/2026-TBS-GeoTopoNet/html/)[PDF](https://mobility-science-lab.com/assets/2025_TBS_GeoTopoNet-BWnU0tqp.pdf)[Official publication](https://doi.org/10.1016/j.tbs.2025.101152)

## Takeaway

To predict where city crowds are heading, is knowing what's nearby enough? This study shows that teaching AI to "look around" neighborhoods and "explore along the road" of transit networks sharpens predictions. Capturing these connections paints a complete picture of how we actually move.

**Fig. 1.** While the metro network is generally more impactful, combining both is optimal for robust results.

## Abstract

Bike sharing systems support sustainable urban development, with accurate demand prediction being essential for efficient operations. Previous studies have primarily modeled spatial dependency of bike sharing demand in Euclidean space or among bike stations, but often overlooked topological dependency of demand shaped by urban transportation networks. Metro and cycling networks could influence bike sharing usage through their functional connections with bike sharing systems. To address this gap, this study proposes GeoTopo-Net, a novel deep learning framework to improve short-term demand forecast for urban bike sharing systems. Different from existing solutions, GeoTopo-Net jointly models dependencies of travel demand in both continuous and network spaces. The model utilizes convolutional neural networks (CNNs) to capture spatial dependency between urban areas and their surroundings, while integrating graph convolutional networks (GCNs) to model the topological dependency introduced by urban transportation networks. Our evaluation across five global cities shows that GeoTopo-Net significantly reduces prediction errors, by up to 8.9% in RMSE, 6.8% in MAE, and 5.9% in MAPE. Incorporating dependencies from metro networks produces notable improvements in high-demand areas and those near the metro stations. These findings highlight the importance of incorporating urban transportation network structures in bike sharing demand forecast. The GeoTopo-Net architecture can also be adapted to improve short-term forecast for different types of travel demand (e.g., ride-hailing; electric vehicle charging demand) that involve complex interdependencies in continuous and network spaces.

## Visualization

**Fig. 2.** (A) Overall design of GeoTopo-Net. In the implementation of the model, two variants of the GeoTopo block are designed: (B) Sequential structure; (C) Parallel structure.

**Fig. 3.** GeoTopo-Net notably improves prediction accuracy along metro networks and their surrounding areas (red cells).

**Fig. 4.** Accuracy improvements in grid cells by demand level (blue) and metro station proximity (red). Higher-demand areas and those closer to metro stations experience greater improvements.

## Citation

`Liang, S., Xu, Y., Li, G., Zhang, X., & Li, Q. (2026). Predicting short-term urban bike sharing demand in a coupled continuous and network space. *Travel Behaviour and Society*, *42*, 101152. [https://doi.org/10.1016/j.tbs.2025.101152](https://doi.org/10.1016/j.tbs.2025.101152)`

## Quicksnap

Scan the QR codes with your mobile device for instant access

This Page

Full Text