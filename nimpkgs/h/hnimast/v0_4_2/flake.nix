{
  description = ''User-friendly wrapper for nim ast'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hnimast-v0_4_2.flake = false;
  inputs.src-hnimast-v0_4_2.type = "github";
  inputs.src-hnimast-v0_4_2.owner = "haxscramper";
  inputs.src-hnimast-v0_4_2.repo = "hnimast";
  inputs.src-hnimast-v0_4_2.ref = "refs/tags/v0.4.2";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hnimast-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hnimast-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hnimast-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}