{
  description = ''A library for playing audio files'';
  inputs.src-parasound-master.flake = false;
  inputs.src-parasound-master.type = "github";
  inputs.src-parasound-master.owner = "paranim";
  inputs.src-parasound-master.repo = "parasound";
  inputs.src-parasound-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parasound-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parasound-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parasound-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}