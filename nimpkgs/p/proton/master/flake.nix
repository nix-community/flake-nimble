{
  description = ''Proton template engine for xml and xhtml files'';
  inputs.src-proton-master.flake = false;
  inputs.src-proton-master.type = "github";
  inputs.src-proton-master.owner = "jasonrbriggs";
  inputs.src-proton-master.repo = "proton-nim";
  inputs.src-proton-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-proton-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-proton-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}