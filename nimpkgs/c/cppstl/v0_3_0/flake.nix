{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
  inputs.src-cppstl-v0_3_0.flake = false;
  inputs.src-cppstl-v0_3_0.type = "github";
  inputs.src-cppstl-v0_3_0.owner = "BigEpsilon";
  inputs.src-cppstl-v0_3_0.repo = "nim-cppstl";
  inputs.src-cppstl-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-cppstl-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cppstl-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}