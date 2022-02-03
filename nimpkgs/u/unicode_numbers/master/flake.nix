{
  description = ''Converts a number into a specially formatted Unicode string'';
  inputs.src-unicode_numbers-master.flake = false;
  inputs.src-unicode_numbers-master.type = "github";
  inputs.src-unicode_numbers-master.owner = "Aearnus";
  inputs.src-unicode_numbers-master.repo = "unicode_numbers";
  inputs.src-unicode_numbers-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unicode_numbers-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicode_numbers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicode_numbers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}