{
  description = ''Neverwinter Nights 1 data accessor library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-neverwinter-1_2_4.flake = false;
  inputs.src-neverwinter-1_2_4.type = "github";
  inputs.src-neverwinter-1_2_4.owner = "niv";
  inputs.src-neverwinter-1_2_4.repo = "neverwinter.nim";
  inputs.src-neverwinter-1_2_4.ref = "refs/tags/1.2.4";
  inputs.src-neverwinter-1_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-neverwinter-1_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-1_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}