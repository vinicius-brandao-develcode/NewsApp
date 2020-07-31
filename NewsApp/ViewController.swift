//
//  ViewController.swift
//  NewsApp
//
//  Created by Develcode Mac on 21/07/20.
//  Copyright © 2020 Develcode Mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    var imagesForFC: [String] = ["0","1","2","3"]
    
    let titleForFC: [String] =
                            [("Europe warns of need for vigilance as Covid-19 cases rise sharply"),
                             ("China orders US consulate in Chengdu to close as tensions rise"),
                             ("'A critical situation': Bangladesh in crisis as monsoon floods follow super-cyclone "),
                             ("Blockbuster movies delayed again by new coronavirus spikes")]
    let authorForFC: [String] =
                            [("By Sam Jones, Kim Willsher, Kate Connolly and agencies at Fri 24 Jul 2020 16.55 BST"),
                             ("By Kamil Ahmed at Fri 24 Jul 2020 06.30 BST"),
                             ("By Lily Kuo in Beijing At Fri 24 Jul 2020 11.00 BST"),
                             ("By Catherine Shoard At Fri 24 Jul 2020 12.27 BST")]
    
    let detailForFC: [String] =
                            [("""
                            Spanish health officials have warned the country could already be experiencing a “second wave” of coronavirus, as France, Germany and Belgium all reported steep rises in their number of cases.

                            Countries across Europe have reminded people of the need for vigilance amid rising cases as the summer holiday season continues.

                            Spain’s health ministry logged 971 new Covid-19 cases on Thursday – the highest daily toll since the state of emergency was lifted at the end of June – and said there were 281 active outbreaks across the country.

                            María José Sierra, the deputy head of Spain’s centre for health emergencies, said that while the curve had been flattened, “community transmission” was being seen in north-eastern areas.

                            “It could already be a second wave, but that’s not the most important thing,” Sierra said. “The most important thing is that we keep following what’s going on, see what measures are necessary, and take them early.”

                            She also said people needed to remember the incidence of the virus had tripled in just two weeks, from 8.76 cases per 100,000 people on 3 July to 27.39 per 100,000. “Obviously, the curve is going up, but let’s wait to see what kind of situation we’re in,” she added.

                            Nearly 8,000 cases have been diagnosed in Catalonia over the past 14 days – accounting for almost half of the 16,410 detected across Spain.

                            Catalonia’s public health secretary, Josep Maria Argimon, said the situation in and around Barcelona was “at a critical moment” and called on people to heed the regional government’s request not to leave their homes unless strictly necessary.

                            There are growing fears the virus is being spread by people going to bars and nightclubs, and that restrictions may be needed to curb the rise in cases.

                            On Thursday, the government of the south-eastern region of Murcia ordered the 32,000 inhabitants of Totana back into the second phase of lockdown de-escalation after 55 cases were traced to a bar in the town.

                            Madrid’s regional government said on Friday it planned to rethink the guidelines on the number of people allowed to meet up at night.

                            “We’re going to introduce measures on nightlife, including limiting the number of people allowed on bar and restaurant terraces or other meeting places because the virus likes movement and large gatherings,” said the region’s deputy public health minister, Antonio Zapatero.

                            The regional government is also urging the central government to introduce more stringent controls at Madrid’s Barajas airport after it emerged that 77 people had arrived there with the virus since May.

                            France’s national health authority, Santé Publique, reported 1,062 new cases on Thursday and said that while there had been an increase among the over-75s and people in care homes, a rise had also been reported in cases among “young adults”.

                            The authority said there had been “a slackening of the application of barrier gestures” and reminded people that physical distancing needed to be maintained.

                            “During the summer and holidays, it may seem artificial to greet each other at a distance, talk from a distance, wash hands regularly and wear masks in enclosed spaces, but this individual and collective effort is crucial to prevent the virus from encroaching on our freedom and the epidemic from rebounding,” it said.

                            On Friday, the French president, Emmanuel Macron, held a meeting of the country’s defence council to discuss the increase in cases and consider fresh measures including whether to tighten controls on the borders with Belgium and Spain and possible quarantine measures for international passengers at airports.

                            Germany’s Robert Koch Institute (RKI) reported 815 new cases on Friday, compared with 583 a week ago and 395 the week before.

                            Excluding recent outbreaks at meat processing plants, the rise was the biggest since mid-May. Figures tend to be higher on Fridays, due to reported cases stacking up during the week.

                            More than 40% of current cases are in the western state of North Rhine-Westphalia, but other states are also showing above-average rises.

                            Jonas Schmidt-Chanasit from the Bernhard-Nocht Institute for Tropical Medicine in Hamburg said the figures appeared to indicate an increase across the population rather than in specific locations such as around meat processing plants. If that was the case, it would make the virus more difficult to contain, he told Der Spiegel.

                            “We need to see whether this is to do with large gatherings, that are now allowed, the reopening of kindergartens and schools, or is it to do with people returning from their holidays?” he said.
                            People returning to Germany from the Balkans, Turkey and Mallorca have tested positive for the virus.

                            The RKI has put 100 countries on a list of risk areas, including the US, Israel and Luxembourg. The health ministry is widely expected to announce that tests for people returning from risk areas will soon be obligatory.

                            In Belgium, where the number of new weekly infections has risen by 89%, officials said a three-year-old girl had become the country’s youngest known victim.

                            The health spokesman Boudewijn Catry said three people were dying each day in Belgium from Covid-19, adding that recent deaths included those of the toddler and an 18-year-old.

                            Catry said the young girl had “severe” pre-existing conditions, but warned against complacency among the healthy, pointing out that 85% of new cases diagnosed last week were among people under 60.

                            “It’s true that it’s rare that a young person dies of Covid-19, but it’s clear that no one is immune,” he said.

                            Agence France-Presse contributed to this report
                            """),
                            ("""
                            Beijing has ordered the closure of a US consulate in south-western China, in a move that escalates tensions between the two countries to a new level.

                            On Friday, China’s ministry of foreign affairs said it had ordered the US consulate in Chengdu, in Sichuan province, to cease all operations. Authorities notified the US of China’s decision to revoke its consent for the consulate to operate, according to a notice on the ministry’s website.

                            Describing the measure as a “legitimate and necessary response” to the actions of the US, which earlier this week gave the Chinese consulate in Houston, Texas, 72 hours to close, Beijing called on Washington to reverse its decision. Chinese officials said on Friday the mission in Houston was still operating.

                            “The current situation between China and the United States is something China does not want to see, and the responsibility rests entirely with the United States,” it said, urging the US to bring “bilateral relations back on track”.

                            China’s ministry of foreign affairs did not give a deadline for when the consulate must close but the editor of the state-run Global Times newspaper said on Twitter the consulate had been given 72 hours to close.

                            The tit-for-tat retaliation over consulates marks a new low in months of deteriorating relations between the two rivals. Without giving further details, the US said it ordered the Chinese consulate in Houston to shut in order to protect “American intellectual property and private information”.

                            China called the measure “unprecedented” and “outrageous”, and accused US diplomats of “infiltration and interference activities”.

                            A foreign ministry spokesman, Wang Wenbin, said at a press briefing on Friday that the US mission in Chengdu had been singled out because “some personnel were engaged in activities inconsistent with their status, that interfered with China’s internal affairs and security interests”.

                            He said: “Diplomacy is about reciprocity.”

                            By closing the consulate in Chengdu, Beijing appears to be reciprocating in kind – shutting a smaller mission rather than more crucial US operations in China. The US has seven diplomatic missions in China – in Beijing, Guangzhou, Shanghai, Wuhan, Shenyang and Hong Kong.

                            “By avoiding Hong Kong, Shanghai and Guangzhou, it helps not to escalate the level of conflict and is a more even match,” said Dali Yang, a professor of political science focusing on Chinese politics at the University of Chicago.

                            Still, the consulate, which oversees China’s south-west, is politically sensitive in some respects. It overseas the Tibetan autonomous region where authorities have overseen a harsh crackdown on the Tibetan minority and banned diplomats and foreign journalists from entering the area.

                            In 2012, the police chief of the south-western city of Chongqing fled to the Chengdu consulate, seeking help after falling out with then Chonqqing party chief, Bo Xilai, setting off one of the most dramatic political scandals to roil the Chinese communist party elite in the last decade.

                            The closure comes less than a day after the US secretary of state, Mike Pompeo, gave a provocative speech calling on Chinese citizens to work with the US to change the direction of the ruling Chinese Communist party.

                            Stopping short of calling for regime change, Pompeo said: “Today China is increasingly authoritarian at home, and more aggressive in its hostility to freedom everywhere else.”

                            “We, the free nations of the world, must induce change in the Chinese Communist party’s behaviour in more creative and assertive ways, because Beijing’s actions threaten our people and our prosperity,” he said, calling the Chinese leader, Xi Jinping, a “true believer in a bankrupt, totalitarian ideology”.

                            “If the free world doesn’t change communist China, communist China will change us,” he added.

                            A Chinese foreign ministry spokeswoman described as futile Pompeo’s efforts to “launch a new crusade against China”. “What he is doing is like an ant trying to shake a tree,” she wrote in English and Chinese on Twitter, which is blocked in China and used by Chinese diplomats to target international audiences.

                            Wang on Friday described Pompeo’s speech as a “malicious” and “groundless attack” on the Communist party and its domestic and foreign policies. “Pompeo’s remarks ignore facts, turn what is black into white and are full of ideological prejudice and a cold war mindset,” he said.

                            Analysts say the Chinese leadership has found itself increasingly boxed in by growing opposition within the international community, the result of US lobbying as well as more aggressive and controversial measures by Beijing.

                            Hours after the foreign ministry’s announcement, Americans in China received a security alert, reminding them of the risk of “arbitrary detention” and the possibility of being blocked from leaving, or exit bans. US citizens in China received a similar alert a few weeks ago.

                            The most recent notice told Americans to “exercise increased caution,” warning that citizens may be “subjected to prolonged interrogations and extended detention for reasons related to ‘state security’”.

                            On Friday, journalists in Chengdu reported a heavy police presence outside the consulate following the announcement on Friday, with officers checking phones and ordering people to delete photographs.

                            It was not clear how many people would be affected by the closure. Opened in 1985, it has more than 200 employees, including about 150 are locally hired Chinese staff. Many diplomats had left the country during the pandemic and have struggled to return.

                            A livestream hosted by the state broadcaster CCTV showed little movement outside the mission but was being watched by as many as 20 million people on Friday afternoon. Many signalled their support of the closure – with one internet user calling for the mission to be renovated and turned a hotpot restaurant. Others criticised the measure.

                            “Confrontation is not good, it affects the economy. It affects everyone,” one user said.
                            """),
                            ("""
                            Bangladesh could be plunged into a humanitarian crisis as it undergoes the most prolonged monsoon flooding in decades while it is still recovering from the effects of super-cyclone Amphan.

                            Despite the UN has lauding its new initiatives for early intervention aimed at preparing communities for crisis, 550 people have been killed and 9.6 million affected by the disaster in Bangladesh, Nepal and north-eastern India, according to the International Federation of the Red Cross and Red Crescent.

                            Bangladesh’s ministry for natural disasters has estimated that a third of the country is already underwater, with heavy rains set to continue until the end of July. The UN has estimated that this flooding could be the most protracted since 1988.

                            Rezaul Karim Chowdhury, executive director of the Bangladeshi NGO Coast, said the country was far more prepared for flooding than in the past, but that populations in flooded areas might end up in dire need because of a combination of existing localised and national crises.

                            He said incomes had already been hit by the government’s closure of 25 state-owned jute mills, mostly in northern areas that have been flooded, and by the Covid-19 pandemic.

                            “The country has been locked down for four months and that has had a serious impact. Forty per cent of rural income was coming from urban areas and then suddenly labourers and rickshaw pullers weren’t sending money home,” said Chowdhury.

                            “Almost a third of the population has dropped under the poverty line. This will have an impact on food security and purchasing power, this is a critical situation we have to overcome.”

                            He said local organisations had exhausted funds responding to the pandemic so the UN and international organisations would need to step in, especially to support farmers whose crops may be damaged before the August rice harvest.

                            The UN said it had been trying to pre-empt damage to livelihoods by predicting where support needed to be sent ahead of time, using advances in data and forecasting analytics.

                            That had allowed the release of relief worth $5.2m (£4m) from its reserve fund for humanitarian emergencies to counter severe flooding over the past week in the form of cash, hygiene and health kits, and equipment to protect farmers’ materials from water damage.

                            The UN under-secretary-general for humanitarian affairs and emergency relief coordinator, Mark Lowcock, said the organisation should no longer be taken by surprise when disasters hit.

                            “Doing something before crises hit can save more lives and costs less money. Plus it’s far more dignified for the people we’re helping,” he said.

                            “If we know a flood is about to hit, why wouldn’t we give river communities the means to get themselves, their livestock and their tools out of harm’s way before the deluge comes, instead of waiting until they’ve lost everything, then try and help?”

                            Sheikh Rokon, founder of the campaign group Riverine People, said the monsoon was essential to life in Bangladesh, recharging water levels and giving life to seasonal wetlands, but that environmental changes were making life harder for communities.

                            “River erosion makes the situation worse. They lose everything but hope and have to struggle for days. This year, riverine communities across the Brahmaputra and Teesta river basins are facing severe erosion,” he said. “A very small riverine community, the water Gypsy, live in the rivers, on boats. Floods makes their life and livelihoods harder.”

                            Rokon said communities usually had little time to prepare, which usually involves moving their belongings to areas protected by embankments.

                            The World Food Programme’s executive director, David Beasley, said improving planning to act on forecasts would help families in the long run.

                            “Year after year, floods devastate Bangladesh. The waters not only swallow up homes and lives but with them progress and hope for the Bangladeshi people,” said Beasley. “I cannot stress enough how important it is to equip communities to prepare and protect themselves against such disasters.”
                            """),
                            ("""
                            Hopes for a speedy substantial resurgence at the global box office were dashed as Disney and Paramount made substantial changes to their release schedules. Mulan, the live-action remake that had been scheduled to open in August after a string of delays, has now been removed from the schedule entirely, pending a new date.

                            Its fate echoes that of Tenet, which had also been positioned as a key title launching a summer revival in cinemas. Earlier this week, Warner Bros removed the Christopher Nolan sci-fi from the diary, citing concerns over whether sufficient numbers of cinemas would be able to reopen in time for a summer release.

                            In a statement about Mulan’s move, Disney linked the change to fresh coronavirus spikes, leading many to suggest the studio was prioritising the US market over international territories, given that many of them are now back up and running.

                            Paramount’s slate changes involve further delays to the release of Top Gun: Maverick, which sees a belated return for Tom Cruise’s flying ace, and to A Quiet Place 2, the sequel to the 2017 horror hit, which was one of the first big casualties of the lockdown in March.

                            Both films are now being released more than a year after their original launch dates, with the former opening in July 2021 and the latter in April.

                            Disney also announced a new plan for its forthcoming Avatar sequels and Star Wars spinoff movies, with four Avatars scheduled for the Christmas holidays biannually between 2022 and 2028 and three Star Wars films arriving every other year from 2023.

                            The French Dispatch, one of the titles Disney inherited from Fox Searchlight, has also been removed from the calendars. Wes Anderson’s comedy was to have premiered at Cannes earlier this year. Meanwhile, Ridley Scott’s medieval drama The Last Duel starring Christian Bale and Matt Damon has moved from this Christmas to October 2021.

                            But the studio has kept some tentpole releases in the mix for this year, including Black Widow (due 6 November), Death on the Nile (23 October) and Steven Spielberg’s West Side Story (18 December).

                            Still set for November is No Time to Die, the 25th James Bond film. Universal’s film was the first picture to have its release dramatically delayed as the pandemic spread; the studio recently moved the US release date forward five days, to 20 November. The UK date remains 12 November.
                            """)]
    let titleForSC: [String] =
                            [("Trump is using federal agents as his 'goon squad', says Ice's ex-acting head "),
                            ("Top lawyer accused of relaying offer of £1m 'bribe' to police, say court transcripts "),
                            ("'A wicked enemy': how Australia's coronavirus success story unravelled ")]
    let detailForSC: [String] =
                            [("""
                            John Sandweg says the deployment of homeland security officials is a ‘manufactured crisis’ stemming from ‘a failure of leadership’

                            The former acting director of the US Immigration and Customs Enforcement agency, which works under the Department of Homeland Security, has condemned the Trump administration’s handling of protests in Portland by deploying federal agents into the city.

                            John Sandweg, the former acting director of Ice, who also served as general counsel for the DHS, said Donald Trump was using the agency as his own “goon squad” by sending federal law enforcement agents to Oregon’s biggest city and vowing to send more to other cities around the country, including Chicago and Albuquerque.

                            Sandweg, in a wide-ranging interview with the Guardian, called the administration’s policy a “failure of leadership in the Trump administration”.

                            He added: “I think it’s an abuse of DHS. I mean really the president’s trying to use DHS as his goon squad. That’s really what’s going on here.”

                            The comments by Sandweg come as unidentified federal officials clashed again in Portland with protesters calling for reforms to the local police. On Wednesday the mayor of Portland, Ted Wheeler, joined protesters. He was teargassed along with others in the crowd. The federal agents have been accused of lifting people off the streets in unmarked cars, as well as deploying military-style uniforms and equipment as they battle demonstrators nightly in the city.

                            Sandweg went on to offer scathing criticism of the administration’s handling of the protests, calling it a “manufactured crisis” driven by politics from the president.

                            “In my experience, this is not coming from the workforce. I think there’s a lot of misconceptions out there that I hope that I can at least clear up,” Sandweg said. “DHS has not so much been unleashed as pushed to do these kinds of things. In my experience the folks that I’ve worked with want to protect national security and public safety.”

                            Sandweg also pointed to the department’s acting director, Chad Wolf, who has been seen as a driving force behind the deployment which has outraged Democrats, some Republicans and many civil rights groups.

                            “You have an acting secretary, if you will, who is in a very precarious position in that a number of his predecessors did not have that long a tenure, who I think is eager to please,” Sandweg said.

                            Sandweg said the case for federal law enforcement officers to guard federal buildings was pretty strong in principle.

                            “From a general position of course the federal government has a right to enforce federal law anywhere in the United States,” Sandweg said. “But again there’s a right way to do that and a wrong way. And what we’re seeing here is the kind of thing that is going to have devastating effects for DHS and its operating agencies for a long time to come.”

                            Asked to compare how the DHS is being used compared with during Barack Obama’s presidency, Sandweg said there was a big difference.

                            “It makes an incredible contrast. Listen, our overarching goal was to be effective. To do effective law enforcement work, to effectively secure the border, to promote public safety and national security, you have to have a great partnership with state and locals. And politics didn’t matter. The politics didn’t matter if you were Republican or Democrat,” Sandweg said, adding that the contrast also extended to the George Bush administration in the early 2000s.

                            Both of Oregon’s senators and other members of the state’s congressional delegation have called for an investigation into the administration’s handling of the protests.

                            Meanwhile, Governor Kate Brown said at a press conference on Wednesday: “This is a democracy, not a dictatorship. We cannot have secret police abducting people and putting them into unmarked vehicles. I cannot believe I have to say that to the president of the United States.”

                            In recent years some Democrats have argued for a major overhaul of federal bodies such as Ice or the DHS. Sandweg worried that if Joe Biden were elected president he might face significant pressure to makes drastic changes.

                            “What concerns me is that there’s going to be a lot of pressure on a President Biden to make really drastic reforms to DHS,” Sandweg said. “I don’t personally think those reforms are necessary. I think this is a crisis of leadership. A failure of leadership in the Trump administration. I think it’s an abuse of DHS.”

                            Sandweg added: “It’s a failure of leadership and at the end of the day here and the key thing is that they get a good, seasoned, good hand here to get DHS to return back to the culture of where DHS wants to be as an agency."
                            """),

                            ("""
                            A lawyer at one of the UK’s most prestigious law firms has been accused of relaying an offer of a £1m “bribe” to police officers as part of a bizarre plot to release €300m (£274m) hidden in a Swiss bank account, according to court transcripts obtained by the Guardian.

                            Mike Stubbs, a partner at Mishcon de Reya, allegedly told two Metropolitan police detectives that a former SAS sergeant with intelligence contacts had concocted a plan to release what were described as “CIA funds” being held in the Swiss bank for “covert” purposes in Somalia.

                            According to the transcripts, Stubbs told the detectives the intelligence operative was proposing to pay a portion of the money into a police pension fund. The detectives allegedly “strongly rebuffed” the proposal and told Stubbs “in clear and strongly worded terms” that the offer he was relaying was “interpreted as a bribe”.

                            Details of the encounter between Stubbs and the detectives emerged during hearings at Southwark crown court in London last December and related to the trial of Othman Louanjli, a French banker.

                            During the trial, but in the absence of the jury, lawyers for Louanjli applied to introduce as evidence a report filed on the Met’s internal intelligence sharing system, Crimint, in which the two detectives provided their account of the meeting with Stubbs in 2013.

                            The court heard that the Crimint report, which was filed a month after the meeting, stated Stubbs twice relayed the intelligence operative’s offer to the police as part of an elaborate proposal to trick a suspect in a fraud investigation into travelling to Switzerland to release the €300m using special access codes. The proposal was not taken up.

                            The judge in the trial, David Tomlinson, summarised the offer to pay money to the police as an “inducement by way of £1m”, but did not make any adverse findings against Stubbs and ultimately ruled against admitting the Crimint report as evidence.

                            However, the judge said Stubbs appeared to think the plan to release the supposed CIA funds was “a clever idea” and described the senior lawyer’s alleged conversations with the police as “extraordinary”.

                            “The whole thing is bizarre. I mean, there are all sorts of problems with it,” the judge remarked. “There are all sorts of questions one can imagine one might ask Mike Stubbs if only to show him how harebrained the idea is.” The police, the judge added, “simply blew the whole idea out of the water both times it was suggested, which was the responsible thing to do”.

                            Stubbs, 64, is a veteran lawyer at Mishcon de Reya, an elite London firm. When the Guardian contacted him by phone, he denied any knowledge of the plot to release funds from Switzerland. “I’ve never heard of this,” he said. “It’s complete nonsense.”

                            Describing himself as “a very straightforward lawyer”, Stubbs dismissed the allegations as “bonkers” and told a Guardian reporter: “I think this is manufactured by somebody, possibly by you.” He repeatedly insisted the meeting with the detectives never took place.

                            In a subsequent letter, Mishcon de Reya clarified that Stubbs did in fact hold a meeting with the police in 2013 and said it was “unsurprising” he was unable to immediately recall the details in an “unsolicited telephone call” before checking contemporaneous documents.

                            The firm said Stubbs met the detectives while acting on client instructions to liaise with the Met and provide any information to officers so they could assess its credibility. Stubbs, the firm said, “simply relayed” to the police the proposal suggested to him by the intelligence operative without endorsing it. The Met declined to comment.

                            Louanjli, a former banker at Liechtensteinische Landesbank, was found guilty of fraud and money laundering charges in December. The case was connected to a financial scam that defrauded a Dutch shipbuilding company, Allseas, out of €100m in 2011.

                            Louanjli was found to have assisted Luis Nobre, a Portuguese confidence trickster who was at the heart of the plot to defraud Allseas. Nobre, who posed as a City trader with links to the Vatican, was imprisoned in 2016 for his role in the fraud.

                            In late 2011, Stubbs was hired by Nobre, who at the time was seeking to regain control of money in the UK he said was for investment purposes but later transpired to be proceeds of the €100m fraud.

                            Weeks later, in a highly unusual move, the Mishcon de Reya lawyer switched sides to represent Allseas after it became apparent the company had been defrauded. Since then, Stubbs and Mishcon de Reya have helped the Dutch company recover its client’s money and pursue Nobre’s associates through litigation.

                            Mishcon de Reya said Stubbs regularly met with the Met over several years to provide information in relation to the fraud against Allseas. The meeting with the two detectives recounted in the Crimint report took place in October 2013.

                            During December’s application, Louanjli’s defence tried to introduce the Crimint report as evidence in the trial in an attempt to undermine the prosecution. The request failed after Tomlinson ruled the evidence was not relevant as it had no “material bearing” on the issues in the trial.

                            However, across two days of hearings in early December, Louanjli’s QC, Mark Rainsford, described to the court the alleged contents of the Crimint report, in which the detectives set out their account of the meeting with Stubbs. The purpose of the meeting, according to the Crimint report, was the “pursuit of outstanding monies”.

                            Citing the report, Rainsford alleged that Stubbs told the officers the ex-SAS sergeant “with alleged CIA contacts” was offering to facilitate an elaborate scheme intended to trick Nobre, who at the time was on bail.

                            Rainsford told the court the plan involved police temporarily returning Nobre’s passport to him to deceive him into thinking “his passport was being permanently returned and that proceedings would be terminated”. As part of this plan, he explained, Nobre would use the passport to access the €300m in the Swiss bank account.

                            According to the QC, the Crimint report described how Stubbs told the officers the ex-SAS sergeant offered to arrange for £1m of this money to be paid to the Serious Organised Crime Agency – replaced in 2013 by the National Crime Agency – or into the Met’s pension fund “in order to ease the current austere environment.”

                            Rainsford told the court the officers rejected this offer and “pointed out to Stubbs in clear and strongly worded terms that this offer was interpreted as a bribe, money laundering and an attempt to deceive a suspect on bail”.

                            The QC alleged that Stubbs then repeated the offer from the ex-SAS sergeant a second time. “Again this was strongly rebuffed,” Rainsford said, and Stubbs “took this on board” before texting the ex-SAS officer with a brief message: “Too dangerous.”

                            While the judge did not make any adverse findings against Stubbs, he noted a “degree of consensus” between the prosecution and the defence “that some of the behaviour of Mike Stubbs of Mishcon de Reya has been questionable”. He also noted the plan Stubbs had allegedly relayed to police would have brought “further untold wealth of dubious origin into the United Kingdom”.

                            In its correspondence with the Guardian, Mishcon de Reya said Stubbs did not make any offer or proposal to the police, but “simply relayed information in line with client instructions” so the police “could assess its credibility and take appropriate steps”.

                            The firm said Stubbs was not in court when the allegations against him were raised and was therefore unable to challenge them at the time. If questioned, the firm continued, he would have given an explanation “corroborated by the contemporaneous records we have seen”. The firm said no action had ever been taken by the police against Stubbs.

                            Mishcon de Reya stressed that Stubbs relayed the intelligence operative’s offer to the detectives “dispassionately” and “did not agree with or endorse the proposal”. The firm said its lawyer considered the plot to trick Nobre into releasing funds from the Swiss bank as “misconceived”. It said Stubbs considered the information he was relaying to police to be “interesting but probably unreliable”.
                            """),
                            ("""
                            Less than a month ago, Australia was the envy of much of the world. With daily new coronavirus cases in the single digits, it was feted as part of a group of “first mover” nations - countries like Taiwan, Singapore and New Zealand that acted decisively to quash coronavirus.

                            In mid-June, after three months of tight restrictions and differing levels of lockdown, life was not quite back to normal, but as politicians liked to stress, it was almost Covid-normal.

                            Restaurants, gyms and beaches across the country opened again, and in the southern state of Victoria residents were awaiting the day when premier Daniel Andrews would say they could “get on the beers” and return to the pub.

                            Travel was also back on the cards. There was talk of a bubble between Australia and New Zealand, and interstate border restrictions were on the verge of being eased.

                            But then, as a sunny autumn rolled into winter, infections began slowly rising in Melbourne.

                            Just weeks later, the country has more than 3,000 active cases and daily new case numbers that are almost as high as the UK - with less than a third of the population. Five million residents of Melbourne have been thrown into their second lockdown, with no real sense of when it might end. Face masks are mandatory. Police patrol the Victorian state border. And the death toll is climbing. So what went wrong?

                            I’m scared of this. We all should be’

                            On 19 June, at a routine press conference, Victoria’s deputy chief medical officer Annaliese van Diemen announced that seven cases had been linked to security guards working at the Stamford Plaza hotel in Melbourne, where travellers were held under Australia’s mandatory 14-day quarantine rule for international arrivals. The group were believed to have breached social distancing rules while socialising.

                            Andrews said the source of the transmission could have been as fleeting as sharing a cigarette lighter. He warned the country was facing a “wicked enemy”. Day by day the cases continued to rise, until there were dozens linked to two hotels.

                            A judicial inquiry into the outbreak this week heard that many if not all of the thousands of new cases in June and July could be linked back to the quarantine hotel outbreaks.

                            The inquiry will be focused on the state government’s decision to use private security contractors, who in turn used sub-contractors, some with reportedly as little as five minutes in training, while in other states, police were on guard.

                            Initially, the authorities launched a testing blitz on hotspots and issued a stay-at-home order – later beefed up to a police-enforced lockdown - for 3,000 residents of nine Melbourne public housing towers.

                            But the cases kept coming. On 7 July Victoria recorded 191 new coronavirus cases, enough to prompt Andrews to announce a city-wide lockdown for at least six weeks.

                            “I know a lot of people aren’t scared because this feels like something happening to other people in other parts of the world,” Andrews said. “But you should be scared of this. I’m scared of this. We all should be.”

                            Now, over two weeks since stage three lockdown commenced, there are 4,213 new cases of coronavirus reported in Victoria alone, with 30 deaths. A total of 201 patients are in hospital, with 41 in intensive care.

                            Australia hit a new record of 484 cases in one day on Wednesday. Melbourne residents now must wear a mask when outside home, or face a $200 fine.

                            On Friday, six more deaths were recorded, and 300 new cases. Andrews said the army would be deployed to knock on the doors of those positive cases who had not answered the phone to contact tracers.

                            This week, Andrews revealed nine in 10 people who had symptoms before getting tested in Victoria did not isolate before their test, and more than half did not isolate while waiting for their results. Many of them continued to work because they needed the money. But Andrews said a debate on the insecure work for many of those affected could be had later.

                            The return of Covid-19 has hit harder than the first wave. Michael, a healthcare worker in Brunswick in Melbourne’s inner north, said it felt like every minor decision in his life held great importance, and that was exhausting.

                            “It’s like you never get a chance to really recharge your battery, there’s always something worrying on the news,” he said. “I hate it.”

                            And the outbreak is spreading across the country. The state of New South Wales restricted entry for people from Victoria, dramatically closing the border between Australia’s two most populous states for the first time since the 1919 flu pandemic. But it wasn’t enough to stop an outbreak linked to the southern state spreading through a popular hotel on an arterial road, and resulting in dozens of new cases at locations across metropolitan Sydney and beyond.

                            So far New South Wales has resisted returning to a harder lockdown, with case numbers much lower than Victoria, and more success in tracing cases to known outbreaks.

                            On Thursday the government announced the nation’s biggest deficit since the second world war, reaching $86bn (£48bn) in the last financial year, and forecast to blow out to $184bn in 2020-21.

                            The numbers of new cases in Victoria are stabilising, but victory is a long way away.

                            Andrews warned: “We shouldn’t lose sight of the fact that even with stability, that will mean some people die, that will mean that some people are gravely ill, and it will mean based on recent international evidence that some people will not shake this like a common cold, they will have lasting impacts.”
                            """)]
    let authorForSC: [String] =
                            [("Writen by Daniel Strauss at Fri 24 Jul 2020 10.30 BST"),
                            ("Writen by Harrys Davies at Fri 24 Jul 2020 11.00 BST"),
                            ("Writen by Josh Taylor at Fri 24 Jul 2020 14.03 BST")]
    let imagesForSC =
                            ["0_cell", "1_cell", "2_cell"]
    
    var newsModelForFC: [NewsModel] = []
    var newsModelForSC: [NewsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newsModel1, newsModel2: [NewsModel]
        newsModel1 = []
        newsModel2 = []
        
        for i in 0..<titleForFC.count {
            newsModel1.append(NewsModel(author: authorForFC[i], detail: detailForFC[i], title: titleForFC[i], imageName: imagesForFC[i]))
        }
        for i in 0..<titleForSC.count {
            newsModel2.append(.init(author: authorForSC[i], detail: detailForSC[i], title: titleForSC[i], imageName: imagesForSC[i]))
        }
        
        newsModelForFC = newsModel1
        newsModelForSC = newsModel2
            
        
        firstCollectionView.delegate = self
        secondCollectionView.delegate = self
        
        firstCollectionView.dataSource = self
        secondCollectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let potato2 = viewController(withStoryboarName: "Main", "AboutViewController") as! AboutViewController

        if collectionView == firstCollectionView{
            let potato = viewController(withStoryboarName: "Main", "AboutViewController") as! AboutViewController

            potato.cellPassImage    = imagesForFC [indexPath.row]
            potato.titlePassString  = titleForFC  [indexPath.row]
            potato.textPassString   = detailForFC   [indexPath.row]
            potato.authorPassString = authorForFC [indexPath.row]

            self.navigationController?.pushViewController(potato, animated: true)
            present(potato, animated: true)


        } else {

            potato2.cellPassImage    = imagesForSC [indexPath.row]
            potato2.titlePassString  = titleForSC  [indexPath.row]
            potato2.textPassString   = detailForSC   [indexPath.row]
            potato2.authorPassString = authorForSC [indexPath.row]

            self.navigationController?.pushViewController(potato2, animated: true)
            present(potato2, animated: true)


        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == firstCollectionView){
            return newsModelForFC.count
        } else {
            return newsModelForSC.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as! FirstCollectionViewCell
        let newsModel = (collectionView == firstCollectionView ? newsModelForFC : newsModelForSC)[indexPath.item]

    
        firstCell.imageView.image    = newsModel.image
        firstCell.titleLabelFC.text  = newsModel.title
        firstCell.descLabelFC.text   = newsModel.detail
        firstCell.authorLabelFC.text = newsModel.author
            
            return firstCell
            
        }
        
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == firstCollectionView {
            
            return CGSize(width: 414, height: 403)
            
        } else {
            
            return CGSize(width: 414, height: 132)
            
        }
    }
    
    
    func viewController(withStoryboarName storyboarName: String, _ viewControllerName: String) -> UIViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: storyboarName, bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: viewControllerName)
    }
}

