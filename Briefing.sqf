if (!hasInterface) exitWith {};
waitUntil {!isNull player};
// ====================================================================================
// NOTES: CREDITS
// The code below creates the Friendly Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Credits","
MH 115. Night Owl [Ghost]<br/>
Mumus 2024

"]];


_sit = player createDiaryRecord ["diary", ["KAT Medical","
<br />
<br />
KAT Advanced Medical medications and equipment<br />
<br />
Basic concepts<br />
<br />
BP: Blood Pressure<br />
HR: Heart Rate<br />
Bradycardia: HR drops by 40 BPM within 2 minutes and lasts for 20 minutes<br />
Max dose: Max number of uses within the time a medicine remains in the body before overdose. Overdose leads to unconsciousness. Max dose can randomly be higher by 1.<br />
<br />
<br />
Medications<br />
Morphine<br />
Supressess pain (0.8), decreases HR, decreases BP<br />
Time in the body: 30 min<br />
Max dose: 4<br />
Required onditions: -<br />
<br />
Adenosine<br />
Decreases HR, decreases BP<br />
Time in the body: 2 min<br />
Max dose: 6<br />
Required onditions: -<br />
<br />
Epinephrine<br />
Increases HR, increases BP, boosts wake-up chances, stamina drain rate is reduced by 50%, slight stamina boost<br />
Time in the body: 2 min<br />
Max dose: 10<br />
Required onditions: -<br />
<br />
Norepinephrine<br />
Increases HR, increases BP, slows down bleeding and transfusion<br />
Time in the body: 6 min<br />
Max dose: 12<br />
Required onditions: IV/ IO inserted<br />
<br />
Nitroglycerin<br />
Increases HR, decreases BP, speeds up bleeding and transfusion<br />
Time in the body: 6 min<br />
Max dose: 12<br />
Required onditions: IV/ IO inserted<br />
<br />
Phenylephrine<br />
Decreases HR, increases BP, slows down bleeding and transfusion (more than norepinephrine)<br />
Time in the body: 6 min<br />
Max dose: 12<br />
Required onditions: IV/ IO inserted<br />
<br />
Painkillers<br />
Suppress pain (0.3), increase HR slightly, decrease BP, 10 pills per item<br />
Time in the body: 10 min<br />
Max dose: 10<br />
Required onditions: -<br />
<br />
Ammonium Carbonate<br />
Increases HR, assists revival (see Essential Values), 10 uses per item<br />
Time in the body: 30 sec<br />
Max dose: 10<br />
Required onditions: Patient is unconscious<br />
<br />
TXA<br />
Pushing TXA causes the clotting system to apply a more durable packing bandage<br />
Time in the body: 2 min<br />
Max dose: 3<br />
Required onditions: IV/ IO inserted<br />
<br />
EACA<br />
Stitches a wound every 6 seconds until all wounds are stitched unless the patient dies<br />
Time in the body: 10 min<br />
Max dose: 10<br />
Required onditions: IV/ IO inserted<br />
<br />
Ketamine<br />
Suppresses pain (0.8), increases HR, increases BP, causes chromatic aberration<br />
Time in the body: 15 min<br />
Max dose: 4<br />
Required onditions: IV/ IO inserted<br />
<br />
Fentanyl<br />
Suppresses pain (1), decreases HR, decreases BP, causes chromatic aberration<br />
Time in the body: 15 min<br />
Max dose: 2<br />
Required onditions: IV/ IO inserted<br />
<br />
Nalbuphine<br />
Suppresses pain (0.6), decreases HR, decreases BP<br />
Time in the body: 15 min<br />
Max dose: 4<br />
Required onditions: IV/ IO inserted<br />
<br />
Amiodarone<br />
Increases AED chances (by 8% - 20%), 33% chance to cause bradycardia<br />
Time in the body: 2 min<br />
Max dose: 4<br />
Required onditions: IV/ IO inserted<br />
<br />
Lidocaine<br />
Increases AED chances by 8%, suppresses pain during surgery and NPWT<br />
Time in the body: 2 min<br />
Max dose: 4<br />
Required onditions: IV/ IO inserted<br />
<br />
Atropine<br />
Increases HR, treats bradycardia, cures chemical intoxication<br />
Time in the body: 2 min<br />
Max dose: 4<br />
Required onditions: IV/ IO inserted<br />
<br />
Pervitin<br />
Multistage stamina drug, increases HR, increases BP, suppresses pain (0.5). After stamina boost is over, stamina drain will become greater than regular. Chromatic aberration and weapon sway as side effects. 8 uses per item<br />
Time in the body: 10 min<br />
Max dose: 2<br />
Required onditions: -<br />
<br />
Penthrox<br />
Suppresses pain (0.6), decreases HR, increases BP<br />
Time in the body: 5 min<br />
Max dose: 10<br />
Required onditions: -<br />
<br />
Caffeine<br />
Stamina drug, refills stamina, increases HR slightly. 15 uses per item.<br />
Time in the body: 30 min<br />
Max dose: 9<br />
Required onditions: -<br />
<br />
Naloxone<br />
Treats morphine, fentanyl and nalbuphine overdose in 1:1 ratio and clears their all effects	<br />	
Required onditions: -<br />
<br />
Etomidate<br />
Suppresses pain, reduces HR, anesthetic<br />
Time in the body: 45 sec<br />
Max dose: 10<br />
Required onditions: IV/ IO inserted<br />
<br />
Lorazepam<br />
Reduces BP, sedates the patient, 33% chance to cause bradycardia<br />
Time in the body: 1 min<br />
Max dose: 3<br />
Required onditions: IV/ IO inserted<br />
<br />
Flumazenil<br />
Removes the sedation (by Lorazepam)<br />
Time in the body: 1 min<br />
Max dose: 3<br />
Required onditions: IV/ IO inserted<br />
<br />
<br />
Medical equipment<br />
<br />
AAT Kit<br />
Used for needle decompression and fluid draining<br />
Required onditions: -<br />
<br />
NCD Kit<br />
Used for needle decompression<br />	
Required onditions: -<br />
<br />
Chest Seal<br />
Dressing used for treating pneumothorax<br />	
Required onditions: -<br />
<br />
Guedel Tube<br />
Prevents obstructions from happening.<br />	
Required onditions: Patient is unconscious, no occlusion<br />
<br />
King LT<br />
Prevents obstructions and occlusions from happening.<br />		
Required onditions: Patient is unconscious, no occlusion<br />
<br />
Field Blood Transfusion Kit<br />
Used to take blood from players/ AI<br />		
Required onditions: Enough inventory space, donor has at least 3.6 liter of blood<br />
<br />
Surgical Kit<br />
Used for wounds stitching<br />
Required onditions: Wound is bandaged (not bleeding)<br />
<br />
16g IV<br />
Intravenous needle, used before administering fluids on limbs<br />		
Required onditions: -<br />
<br />
FAST IO<br />
Intraosseous needle, used before administering fluids on the torso<br />		
Required onditions: -<br />
<br />
AED and AED X-series<br />
Automated External Defibrillator, the X-series version has a vitals monitoring function<br />	
Required onditions: Patient is unconscious, not undergoing CPR<br />
<br />
Stethoscope<br />
Allows the diagnosis of thorax injuries<br />
Required onditions: -<br />
<br />
Accuvac<br />
A device used to remove occlusion from airways<br />
Required onditions: Patient is unconscious<br />
<br />
BVM<br />
Patient not breathing: Slows down SpO2 loss<br />
Patient breathing: Increases SpO2 restoring ratio<br />
For better effect, Portable Oxygen Tank can be used<br />	
Required onditions: Patient is unconscious, airways are clear<br />
<br />
Pocket BVM<br />
Compact BVM version. Cannot utilize Portable Oxygen Tank<br />		
Required onditions: Patient is unconscious, airways are clear<br />
<br />
Portable Oxygen Tank<br />
Comes in two volumes (150 liter or 300 liter). Used to provide oxygen for BVM. Oxygen can be refilled at medical facilities/vehicles (ACE interaction). Medical facilities/vehicles act as infinite oxygen sources for BVM actions, if performed by them<br />
Required onditions: -<br />
<br />
Pulse Oximeter<br />
Monitors HR and Sp02<br />	
Required onditions: No active pulse oximeter on patient’s body<br />
<br />
IV Stand<br />
Allows administering saline from a stand<br />		
Required onditions: -<br />
<br />
Helistretcher<br />
Enables transporting wounded soldiers by a helicopter<br />
Required onditions: -<br />
<br />
<br />
Surgery equipment<br />
<br />
Bone Plate<br />
A metal piece screwed into a bone<br />
Required onditions: -<br />
<br />
Clamp<br />
Used for clamping a wound<br />		
Required onditions: -<br />
<br />
Retractor<br />
Used for exposing fractures<br />
Required onditions: -<br />
<br />
Scalpel<br />
Used for performing incisions<br />	
Required onditions: -<br />
<br />
Bubble Wrap<br />
Suppresses pain (0.05). 50 uses per item. Accessed via ACE menu (ctrl + win)<br />		
Required onditions: -<br />

"]];
