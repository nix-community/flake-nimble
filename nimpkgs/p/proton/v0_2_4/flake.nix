{
  description = ''Proton template engine for xml and xhtml files'';
  inputs.src-proton-v0_2_4.flake = false;
  inputs.src-proton-v0_2_4.type = "github";
  inputs.src-proton-v0_2_4.owner = "jasonrbriggs";
  inputs.src-proton-v0_2_4.repo = "proton-nim";
  inputs.src-proton-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, src-proton-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proton-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}