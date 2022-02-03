{
  description = ''A string formatting library inspired by Python's `format`.'';
  inputs.src-strfmt-master.flake = false;
  inputs.src-strfmt-master.type = "github";
  inputs.src-strfmt-master.owner = "bio-nim";
  inputs.src-strfmt-master.repo = "nim-strfmt";
  inputs.src-strfmt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-strfmt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strfmt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strfmt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}