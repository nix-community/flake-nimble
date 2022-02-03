{
  description = ''pure Ini configurations parser'';
  inputs.src-configparser-master.flake = false;
  inputs.src-configparser-master.type = "github";
  inputs.src-configparser-master.owner = "xmonader";
  inputs.src-configparser-master.repo = "nim-configparser";
  inputs.src-configparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-configparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-configparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-configparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}