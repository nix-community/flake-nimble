{
  description = ''Simple async Gemini server'';
  inputs.src-geminim-master.flake = false;
  inputs.src-geminim-master.type = "github";
  inputs.src-geminim-master.owner = "IDF31";
  inputs.src-geminim-master.repo = "geminim";
  inputs.src-geminim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-geminim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-geminim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-geminim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}