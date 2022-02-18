{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-parsefixed-0_1_2.flake = false;
  inputs.src-parsefixed-0_1_2.type = "github";
  inputs.src-parsefixed-0_1_2.owner = "jlp765";
  inputs.src-parsefixed-0_1_2.repo = "parsefixed";
  inputs.src-parsefixed-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parsefixed-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsefixed-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parsefixed-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}