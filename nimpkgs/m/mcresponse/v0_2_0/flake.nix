{
  description = ''mConnect Standardised Response Package'';
  inputs.src-mcresponse-v0_2_0.flake = false;
  inputs.src-mcresponse-v0_2_0.type = "github";
  inputs.src-mcresponse-v0_2_0.owner = "abbeymart";
  inputs.src-mcresponse-v0_2_0.repo = "mcresponse-nim";
  inputs.src-mcresponse-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-mcresponse-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcresponse-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mcresponse-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}