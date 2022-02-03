{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
  inputs.src-cppstl-master.flake = false;
  inputs.src-cppstl-master.type = "github";
  inputs.src-cppstl-master.owner = "BigEpsilon";
  inputs.src-cppstl-master.repo = "nim-cppstl";
  inputs.src-cppstl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cppstl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cppstl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cppstl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}