{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mapbits-master.flake = false;
  inputs.src-mapbits-master.type = "github";
  inputs.src-mapbits-master.owner = "jlp765";
  inputs.src-mapbits-master.repo = "mapbits";
  inputs.src-mapbits-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mapbits-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mapbits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mapbits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}