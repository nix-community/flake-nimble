{
  description = ''A package that makes creating macros easier'';
  inputs.src-macroutils-master.flake = false;
  inputs.src-macroutils-master.type = "github";
  inputs.src-macroutils-master.owner = "PMunch";
  inputs.src-macroutils-master.repo = "macroutils";
  inputs.src-macroutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-macroutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-macroutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-macroutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}