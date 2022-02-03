{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_0_4.flake = false;
  inputs.src-nimpass-v0_0_4.type = "github";
  inputs.src-nimpass-v0_0_4.owner = "xioren";
  inputs.src-nimpass-v0_0_4.repo = "NimPass";
  inputs.src-nimpass-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-nimpass-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}