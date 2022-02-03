{
  description = ''Proton template engine for xml and xhtml files'';
  inputs.src-proton-v0_2_5.flake = false;
  inputs.src-proton-v0_2_5.type = "github";
  inputs.src-proton-v0_2_5.owner = "jasonrbriggs";
  inputs.src-proton-v0_2_5.repo = "proton-nim";
  inputs.src-proton-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-proton-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proton-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}