{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_0_5.flake = false;
  inputs.src-nimpass-v0_0_5.type = "github";
  inputs.src-nimpass-v0_0_5.owner = "xioren";
  inputs.src-nimpass-v0_0_5.repo = "NimPass";
  inputs.src-nimpass-v0_0_5.ref = "refs/tags/v0.0.5";
  
  outputs = { self, nixpkgs, src-nimpass-v0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}