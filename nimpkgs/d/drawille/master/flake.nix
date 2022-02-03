{
  description = ''Drawing in terminal with Unicode Braille characters.'';
  inputs.src-drawille-master.flake = false;
  inputs.src-drawille-master.type = "github";
  inputs.src-drawille-master.owner = "PMunch";
  inputs.src-drawille-master.repo = "drawille-nim";
  inputs.src-drawille-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-drawille-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drawille-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-drawille-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}