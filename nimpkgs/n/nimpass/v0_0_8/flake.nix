{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-v0_0_8.flake = false;
  inputs.src-nimpass-v0_0_8.type = "github";
  inputs.src-nimpass-v0_0_8.owner = "xioren";
  inputs.src-nimpass-v0_0_8.repo = "NimPass";
  inputs.src-nimpass-v0_0_8.ref = "refs/tags/v0.0.8";
  
  outputs = { self, nixpkgs, src-nimpass-v0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}