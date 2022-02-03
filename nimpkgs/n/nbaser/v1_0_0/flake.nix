{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
  inputs.src-nbaser-v1_0_0.flake = false;
  inputs.src-nbaser-v1_0_0.type = "github";
  inputs.src-nbaser-v1_0_0.owner = "D-Nice";
  inputs.src-nbaser-v1_0_0.repo = "nbaser";
  inputs.src-nbaser-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-nbaser-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nbaser-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}