{
  description = ''eastasianwidth is library for EastAsianWidth.'';
  inputs.src-eastasianwidth-1_1_0.flake = false;
  inputs.src-eastasianwidth-1_1_0.type = "github";
  inputs.src-eastasianwidth-1_1_0.owner = "jiro4989";
  inputs.src-eastasianwidth-1_1_0.repo = "eastasianwidth";
  inputs.src-eastasianwidth-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-eastasianwidth-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eastasianwidth-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eastasianwidth-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}