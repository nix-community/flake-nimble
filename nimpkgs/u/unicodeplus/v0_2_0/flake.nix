{
  description = ''Common unicode operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unicodeplus-v0_2_0.flake = false;
  inputs.src-unicodeplus-v0_2_0.type = "github";
  inputs.src-unicodeplus-v0_2_0.owner = "nitely";
  inputs.src-unicodeplus-v0_2_0.repo = "nim-unicodeplus";
  inputs.src-unicodeplus-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodeplus-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodeplus-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodeplus-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}