{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_0_1.flake = false;
  inputs.src-nimpass-v0_0_1.type = "github";
  inputs.src-nimpass-v0_0_1.owner = "xioren";
  inputs.src-nimpass-v0_0_1.repo = "NimPass";
  inputs.src-nimpass-v0_0_1.ref = "refs/tags/v0.0.1";
  
  outputs = { self, nixpkgs, src-nimpass-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}