{
  description = ''Access bit mapped portions of bytes in binary data as int variables'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mapbits-1_0.flake = false;
  inputs.src-mapbits-1_0.type = "github";
  inputs.src-mapbits-1_0.owner = "jlp765";
  inputs.src-mapbits-1_0.repo = "mapbits";
  inputs.src-mapbits-1_0.ref = "refs/tags/1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mapbits-1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mapbits-1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mapbits-1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}