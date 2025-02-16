# Criterios para la elección de fuentes tipográficas en libros científicos ordenados por importancia descendente  

---

## 1. **Legibilidad y claridad**  
La legibilidad es el criterio primordial. Una fuente científica debe:  
   - Garantizar una lectura prolongada sin fatiga visual.  
   - Diferenciar claramente caracteres similares:  
     - Ejemplo correcto: `I` (mayúscula) vs `l` (minúscula) en *Libertinus*: **I** | **l**  
     - Ejemplo incorrecto: Confusión en *Helvetica*: **I** | **l**  
   - Optar por fuentes serif (ej.: *Libertinus Serif*, *STIX Two*) para texto impreso. En digital, sans-serif como *Noto Sans* si hay baja resolución.  

---

## 2. **Cobertura de glifos y soporte Unicode multilingüe**  
Debe garantizar:  
   - **+5,000 glifos** para cubrir:  
     - **Griego politónico**: ὕ → `ὕ` (precompuesto) vs `υ` + `´` + `̔` (combinado)  
     - **CJK**: 漢 (Hanzi) + 日本語 (Kanji/Hiragana)  
     - **Matemáticas avanzadas**: ∀ (U+2200) → `∀`, ⊠ (U+22A0) → `⊠`  
   - **Soporte Unicode 15.0+**:  
     - Ejemplo de error: 刃 (Kanji) renderizado como 刄 en fuentes incompletas  
   - **Fuentes recomendadas**:  
     - *Noto Serif* (cobertura pan-Unicode): ㋐ (Katakana) + ⲧ (Copto)  

---

## 3. **Soporte para diacríticos: precompuestos vs. combinables**  
### a) **Caracteres precompuestos**  
- Ejemplo: `ắ` (U+1EAF) → **ắ** (correcto en *Gentium*) vs `a´` (fallo en *Arial*)  
### b) **Marcas diacríticas combinables**  
- Ejemplo de superposición correcta: `ก้` (Tailandés) → **ก้**  
- Ejemplo de error: `и́` (Cirílico) → **и́** (correcto) vs **и´** (fuente no compatible)  

| Fuente            | Precompuestos | Diacríticos combinables |  
|--------------------|---------------|-------------------------|  
| **Gentium Plus**   | 1,200+        | 580+                    |  
| **Noto Serif**     | 2,800+        | 430+                    |  

---

## 4. **Compatibilidad técnica con sistemas de escritura complejos**  
   - **Griego científico**:  
     - Renderizado profesional: `ᾇ` (U+1F87) → **ᾇ** vs fallo: **αῇ**  
   - **CJK**:  
     - Ejemplo de kerning vertical:  
       ```
       漢
       字
       配
       置
       ```  
   - **Herramientas**: Verificar con *FontForge* la posición de diacríticos:  
     ```
     Ά (U+0386) → Anclaje en (x: 245, y: 780)
     ```  

---

## 5. **Neutralidad y profesionalismo tipográfico**  
   - **Evitar**:  
     - Estilos decorativos en fórmulas: *F = m**🅰** (incorrecto) vs *F = m**a** (correcto)  
   - **Preferir**:  
     - Diseños serif para CJK: 科學 (Adobe Song) vs ⿕ (Ming decorativo)  

---

## 6. **Consistencia visual entre sistemas de escritura**  
   - **Ejemplo armónico**:  
     ```
     Texto latino: 12pt Libertinus  
     漢字: 12pt Noto Serif CJK  
     Ecuación: ∀x ∈ ℝ  
     ```  
   - **Ejemplo desbalanceado**:  
     ```
     Texto: 12pt Times New Roman  
     漢字: 10pt SimSun → Desproporción en altura-x  
     ```  

---

## 7. **Licencias y gestión de fuentes multilingües**  
   - **Ejemplo de licencia restrictiva**:  
     - MS Mincho → No permite modificación  
     - Source Han Serif → Permite edición (Apache 2.0)  
   - **Solución open-source**:  
     ```css
     /* CSS para fuentes mixtas */
     body { font-family: "Libertinus Serif", "Noto Serif CJK SC"; }
     ```

---

## 8. **Contexto académico y tradición disciplinar**  
   - **Ejemplos disciplinares**:  
     - Física: `ψ` (psi) en *STIX Two* → **ψ** vs *Cambria* → **ψ** (trazo fino)  
     - Sinología: Carácter 說 (Han tradicional) → Evitar simplificado 说  

---

## 9. **Eficiencia en densidad de texto**  
   - **Ejemplo tipográfico**:  
     ```
     Fuente compacta: [Arno Pro] Lorem ipsum... (30 líneas/página)  
     Fuente dispersa: [Garamond] Lorem ipsum... (25 líneas/página)  
     ```  

---

### Tabla comparativa final  
| Característica         | Libertinus | Noto Serif | STIX Two |  
|------------------------|------------|------------|----------|  
| Cobertura griego       | 100%       | 85%        | 95%      |  
| Símbolos matemáticos   | 1,900+     | 1,200+     | 7,500+   |  
| Licencia               | OFL        | OFL        | Propia   |  
| Soporte vertical CJK   | No         | Sí         | No       |  

---

### Configuración recomendada en LaTeX  
```latex  
\usepackage{unicode-math}  
\setmainfont{Libertinus Serif}  
\setmathfont{Libertinus Math}  
\setsansfont{Noto Sans CJK SC} % Para títulos en chino.
```

# Conclusión técnica:

Para libros científicos multilingües:

- Priorizar Libertinus si el 80%+ es contenido matemático
- Usar Noto Serif si hay >30% de texto CJK
- Verificar siempre con textos de prueba