

# 
# Example:
#	Stack Operations and Matrix Products


	# Show, that the following relation holds:
	# vec ( A %*% B %*% C ) = ( t(C) %x% A ) %*% vec(B)
		
	# Three random Matrixes:
	A = matrix(rnorm(9), 3)
	B = matrix(rnorm(9), 3)
	C = matrix(rnorm(9), 3)
	
	# Print vech:
	A; vech(A)
	
	# Print vec:
	B; vec(B)
	
	# Vector Product:
	A %*% B

	# Kronecker Product:
	A %x% B

	# Left Hand Side:
	LHS = vec ( A %*% B %*% C )

	# Right Hand Side:
	# %x# denotes the Kronecker Product
	RHS = ( t(C) %x% A ) %*% vec(B)
	
	# Test the Difference:
	data.frame(LHS, RHS, LHS-RHS)

	