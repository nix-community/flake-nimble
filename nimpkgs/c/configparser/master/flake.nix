{
  description = ''pure Ini configurations parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-configparser-master.flake = false;
  inputs.src-configparser-master.type = "github";
  inputs.src-configparser-master.owner = "xmonader";
  inputs.src-configparser-master.repo = "nim-configparser";
  inputs.src-configparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-configparser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-configparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-configparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}