{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
  inputs.src-nimLUA-v0_3_8.flake = false;
  inputs.src-nimLUA-v0_3_8.type = "github";
  inputs.src-nimLUA-v0_3_8.owner = "jangko";
  inputs.src-nimLUA-v0_3_8.repo = "nimLUA";
  inputs.src-nimLUA-v0_3_8.ref = "refs/tags/v0.3.8";
  
  outputs = { self, nixpkgs, src-nimLUA-v0_3_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimLUA-v0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimLUA-v0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}