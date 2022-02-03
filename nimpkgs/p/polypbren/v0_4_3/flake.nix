{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';
  inputs.src-polypbren-v0_4_3.flake = false;
  inputs.src-polypbren-v0_4_3.type = "github";
  inputs.src-polypbren-v0_4_3.owner = "guibar64";
  inputs.src-polypbren-v0_4_3.repo = "polypbren";
  inputs.src-polypbren-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-polypbren-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polypbren-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polypbren-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}