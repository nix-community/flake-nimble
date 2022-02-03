{
  description = ''libmagic for nim'';
  inputs.src-magic-master.flake = false;
  inputs.src-magic-master.type = "github";
  inputs.src-magic-master.owner = "xmonader";
  inputs.src-magic-master.repo = "nim-magic";
  inputs.src-magic-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-magic-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-magic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-magic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}