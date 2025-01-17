import { __VLS_internalComponent, __VLS_componentsOption, __VLS_name, props, deleteSubmit } from "./AdminCard.vue";

function __VLS_template() {
let __VLS_ctx!: InstanceType<__VLS_PickNotAny<typeof __VLS_internalComponent, new () => {}>> & {};
/* Components */
let __VLS_otherComponents!: NonNullable<typeof __VLS_internalComponent extends { components: infer C; } ? C : {}> & typeof __VLS_componentsOption;
let __VLS_own!: __VLS_SelfComponent<typeof __VLS_name, typeof __VLS_internalComponent & (new () => { $slots: typeof __VLS_slots; })>;
let __VLS_localComponents!: typeof __VLS_otherComponents & Omit<typeof __VLS_own, keyof typeof __VLS_otherComponents>;
let __VLS_components!: typeof __VLS_localComponents & __VLS_GlobalComponents & typeof __VLS_ctx;
/* Style Scoped */
type __VLS_StyleScopedClasses = {};
let __VLS_styleScopedClasses!: __VLS_StyleScopedClasses | keyof __VLS_StyleScopedClasses | (keyof __VLS_StyleScopedClasses)[];
/* CSS variable injection */
/* CSS variable injection end */
let __VLS_resolvedLocalAndGlobalComponents!: {};
__VLS_intrinsicElements.div; __VLS_intrinsicElements.div;
__VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p; __VLS_intrinsicElements.p;
__VLS_intrinsicElements.button; __VLS_intrinsicElements.button; __VLS_intrinsicElements.button; __VLS_intrinsicElements.button;
{
const __VLS_0 = __VLS_intrinsicElements["div"];
const __VLS_1 = __VLS_elementAsFunctionalComponent(__VLS_0);
const __VLS_2 = __VLS_1({ ...{}, class: ("w-full items-center py-2 text-xl rounded-lg text-clear_white h-auto bg-main_green flex flex-row justify-around"), }, ...__VLS_functionalComponentArgsRest(__VLS_1));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_0, typeof __VLS_2> & Record<string, unknown>) => void)({ ...{}, class: ("w-full items-center py-2 text-xl rounded-lg text-clear_white h-auto bg-main_green flex flex-row justify-around"), });
const __VLS_3 = __VLS_pickFunctionalComponentCtx(__VLS_0, __VLS_2)!;
let __VLS_4!: __VLS_NormalizeEmits<typeof __VLS_3.emit>;
{
const __VLS_5 = __VLS_intrinsicElements["p"];
const __VLS_6 = __VLS_elementAsFunctionalComponent(__VLS_5);
const __VLS_7 = __VLS_6({ ...{}, }, ...__VLS_functionalComponentArgsRest(__VLS_6));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_5, typeof __VLS_7> & Record<string, unknown>) => void)({ ...{}, });
const __VLS_8 = __VLS_pickFunctionalComponentCtx(__VLS_5, __VLS_7)!;
let __VLS_9!: __VLS_NormalizeEmits<typeof __VLS_8.emit>;
(props.adminCardInfo.id);
(__VLS_8.slots!).default;
}
{
const __VLS_10 = __VLS_intrinsicElements["p"];
const __VLS_11 = __VLS_elementAsFunctionalComponent(__VLS_10);
const __VLS_12 = __VLS_11({ ...{}, }, ...__VLS_functionalComponentArgsRest(__VLS_11));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_10, typeof __VLS_12> & Record<string, unknown>) => void)({ ...{}, });
const __VLS_13 = __VLS_pickFunctionalComponentCtx(__VLS_10, __VLS_12)!;
let __VLS_14!: __VLS_NormalizeEmits<typeof __VLS_13.emit>;
(props.adminCardInfo.title);
(__VLS_13.slots!).default;
}
{
const __VLS_15 = __VLS_intrinsicElements["p"];
const __VLS_16 = __VLS_elementAsFunctionalComponent(__VLS_15);
const __VLS_17 = __VLS_16({ ...{}, }, ...__VLS_functionalComponentArgsRest(__VLS_16));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_15, typeof __VLS_17> & Record<string, unknown>) => void)({ ...{}, });
const __VLS_18 = __VLS_pickFunctionalComponentCtx(__VLS_15, __VLS_17)!;
let __VLS_19!: __VLS_NormalizeEmits<typeof __VLS_18.emit>;
(props.adminCardInfo.price);
(__VLS_18.slots!).default;
}
{
const __VLS_20 = __VLS_intrinsicElements["p"];
const __VLS_21 = __VLS_elementAsFunctionalComponent(__VLS_20);
const __VLS_22 = __VLS_21({ ...{}, }, ...__VLS_functionalComponentArgsRest(__VLS_21));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_20, typeof __VLS_22> & Record<string, unknown>) => void)({ ...{}, });
const __VLS_23 = __VLS_pickFunctionalComponentCtx(__VLS_20, __VLS_22)!;
let __VLS_24!: __VLS_NormalizeEmits<typeof __VLS_23.emit>;
(__VLS_23.slots!).default;
}
{
const __VLS_25 = __VLS_intrinsicElements["button"];
const __VLS_26 = __VLS_elementAsFunctionalComponent(__VLS_25);
const __VLS_27 = __VLS_26({ ...{}, class: ("btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey"), }, ...__VLS_functionalComponentArgsRest(__VLS_26));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_25, typeof __VLS_27> & Record<string, unknown>) => void)({ ...{}, class: ("btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey"), });
const __VLS_28 = __VLS_pickFunctionalComponentCtx(__VLS_25, __VLS_27)!;
let __VLS_29!: __VLS_NormalizeEmits<typeof __VLS_28.emit>;
(__VLS_28.slots!).default;
}
{
const __VLS_30 = __VLS_intrinsicElements["button"];
const __VLS_31 = __VLS_elementAsFunctionalComponent(__VLS_30);
const __VLS_32 = __VLS_31({ ...{ onClick: {} as any, }, class: ("btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey"), }, ...__VLS_functionalComponentArgsRest(__VLS_31));
({} as (props: __VLS_FunctionalComponentProps<typeof __VLS_30, typeof __VLS_32> & Record<string, unknown>) => void)({ ...{ onClick: {} as any, }, class: ("btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey"), });
const __VLS_33 = __VLS_pickFunctionalComponentCtx(__VLS_30, __VLS_32)!;
let __VLS_34!: __VLS_NormalizeEmits<typeof __VLS_33.emit>;
let __VLS_35 = { 'click': __VLS_pickEvent(__VLS_34['click'], ({} as __VLS_FunctionalComponentProps<typeof __VLS_31, typeof __VLS_32>).onClick) };
__VLS_35 = { click: (__VLS_ctx.deleteSubmit) };
(__VLS_33.slots!).default;
}
(__VLS_3.slots!).default;
}
if (typeof __VLS_styleScopedClasses === 'object' && !Array.isArray(__VLS_styleScopedClasses)) {
__VLS_styleScopedClasses["w-full"];
__VLS_styleScopedClasses["items-center"];
__VLS_styleScopedClasses["py-2"];
__VLS_styleScopedClasses["text-xl"];
__VLS_styleScopedClasses["rounded-lg"];
__VLS_styleScopedClasses["text-clear_white"];
__VLS_styleScopedClasses["h-auto"];
__VLS_styleScopedClasses["bg-main_green"];
__VLS_styleScopedClasses["flex"];
__VLS_styleScopedClasses["flex-row"];
__VLS_styleScopedClasses["justify-around"];
__VLS_styleScopedClasses["btn"];
__VLS_styleScopedClasses["btn-wide"];
__VLS_styleScopedClasses["border-2"];
__VLS_styleScopedClasses["bg-clear_white"];
__VLS_styleScopedClasses["text-main_green"];
__VLS_styleScopedClasses["hover:bg-form_grey"];
__VLS_styleScopedClasses["btn"];
__VLS_styleScopedClasses["btn-wide"];
__VLS_styleScopedClasses["border-2"];
__VLS_styleScopedClasses["bg-clear_white"];
__VLS_styleScopedClasses["text-main_green"];
__VLS_styleScopedClasses["hover:bg-form_grey"];
}
var __VLS_slots!: {};
// @ts-ignore
[deleteSubmit,];
return __VLS_slots;
}
