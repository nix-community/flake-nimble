{
  description = ''
    Bindings for the C++ Standard Template Library (STL)
  '';
  inputs.src-cppstl.url = "https://github.com/BigEpsilon/nim-cppstl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
