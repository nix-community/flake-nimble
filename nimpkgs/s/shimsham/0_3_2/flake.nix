{
  description = ''Hashing/Digest collection in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-shimsham-0_3_2.flake = false;
  inputs.src-shimsham-0_3_2.type = "github";
  inputs.src-shimsham-0_3_2.owner = "apense";
  inputs.src-shimsham-0_3_2.repo = "shimsham";
  inputs.src-shimsham-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shimsham-0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shimsham-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shimsham-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}