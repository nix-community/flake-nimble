{
  description = ''Random password and passphrase generator'';
  inputs.src-randpw-v1_0_0.flake = false;
  inputs.src-randpw-v1_0_0.type = "github";
  inputs.src-randpw-v1_0_0.owner = "pdrb";
  inputs.src-randpw-v1_0_0.repo = "nim-randpw";
  inputs.src-randpw-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-randpw-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-randpw-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-randpw-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}