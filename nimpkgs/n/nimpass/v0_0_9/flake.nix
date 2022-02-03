{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_0_9.flake = false;
  inputs.src-nimpass-v0_0_9.type = "github";
  inputs.src-nimpass-v0_0_9.owner = "xioren";
  inputs.src-nimpass-v0_0_9.repo = "NimPass";
  inputs.src-nimpass-v0_0_9.ref = "refs/tags/v0.0.9";
  
  outputs = { self, nixpkgs, src-nimpass-v0_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}