{
  description = ''Utility macros for easier handling of options in Nim'';
  inputs.src-optionsutils-master.flake = false;
  inputs.src-optionsutils-master.type = "github";
  inputs.src-optionsutils-master.owner = "PMunch";
  inputs.src-optionsutils-master.repo = "nim-optionsutils";
  inputs.src-optionsutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-optionsutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionsutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-optionsutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}