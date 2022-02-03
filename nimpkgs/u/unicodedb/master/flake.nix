{
  description = ''Unicode Character Database (UCD) access for Nim'';
  inputs.src-unicodedb-master.flake = false;
  inputs.src-unicodedb-master.type = "github";
  inputs.src-unicodedb-master.owner = "nitely";
  inputs.src-unicodedb-master.repo = "nim-unicodedb";
  inputs.src-unicodedb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unicodedb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unicodedb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}