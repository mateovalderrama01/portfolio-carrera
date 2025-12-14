#  calcular el salario neto de un empleado
def calcular_salario_neto(salario_bruto, aux_transporte, bono):
    # Deducciones por salud y pensión (5% cada una)
    deduccion_salud = 0.05 * salario_bruto
    deduccion_pension = 0.05 * salario_bruto
    
    # Salario después de deducciones de salud y pensión
    salario_neto = salario_bruto - deduccion_salud - deduccion_pension
    
    # Auxilio de transporte si aplica
    if aux_transporte:
        salario_neto += 140606  # Valor del auxilio de transporte 
    
    # Bono si aplica
    if bono:
        salario_neto += 1000  # Valor del bono 

    return salario_neto

# Ciclo while para permitir calcular salarios de varios empleados
continuar = True

while continuar:
    print("\no--- Cálculo de salario neto del empleado ---")
    
    # Captura de información básica
    nombre = input("Ingrese el nombre del empleado: ")
    apellido = input("ingrese el apellido del empleado: ")
    salario_bruto = float(input(f"Ingrese el salario bruto de {nombre}{apellido}:"))
    
    # Auxilio de transporte
    aux_transporte = input("¿El empleado recibe auxilio de transporte? (si/no): ").lower() == 'si'
    
    # Bono 
    bono = input("¿El empleado recibe bono? (si/no): ").lower() == 'si'
    
    # Calcular salario neto
    salario_neto = calcular_salario_neto(salario_bruto, aux_transporte, bono)
    
    # Mostrar resultados
    print(f"\nResultados para {nombre}{apellido}:")
    print(f"Salario bruto: ${salario_bruto:.2f}")
    print(f"Salario neto después de deducciones: ${salario_neto:.2f}")
    
    # Preguntar si se desea calcular otro salario (usando ciclo for para control de intentos)
    for intento in range(3):  # Permitimos 3 intentos
        respuesta = input("\n¿Desea calcular el salario de otro empleado? (si/no): ").lower()
        if respuesta == 'si':
            continuar = True
            break
        elif respuesta == 'no':
            continuar = False
            break
        else:
            print("Respuesta no válida. Inténtelo de nuevo.")
    
    if respuesta not in ['si', 'no']:
        print("Número máximo de intentos excedido. Finalizando el programa.")
        continuar = False

print("Cálculo de salarios finalizado.")
