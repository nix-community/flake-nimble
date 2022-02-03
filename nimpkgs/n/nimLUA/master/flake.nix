{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
  inputs.src-nimLUA-master.flake = false;
  inputs.src-nimLUA-master.type = "github";
  inputs.src-nimLUA-master.owner = "jangko";
  inputs.src-nimLUA-master.repo = "nimLUA";
  inputs.src-nimLUA-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimLUA-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimLUA-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimLUA-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}