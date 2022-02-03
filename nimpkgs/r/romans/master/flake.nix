{
  description = ''Conversion between integers and Roman numerals'';
  inputs.src-romans-master.flake = false;
  inputs.src-romans-master.type = "github";
  inputs.src-romans-master.owner = "lcrees";
  inputs.src-romans-master.repo = "romans";
  inputs.src-romans-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-romans-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-romans-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-romans-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}