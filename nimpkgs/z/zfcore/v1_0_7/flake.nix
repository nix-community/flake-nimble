{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfcore-v1_0_7.flake = false;
  inputs.src-zfcore-v1_0_7.type = "github";
  inputs.src-zfcore-v1_0_7.owner = "zendbit";
  inputs.src-zfcore-v1_0_7.repo = "nim.zfcore";
  inputs.src-zfcore-v1_0_7.ref = "refs/tags/v1.0.7";
  
  
  inputs."zfblast".type = "github";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".repo = "flake-nimble";
  inputs."zfblast".ref = "flake-pinning";
  inputs."zfblast".dir = "nimpkgs/z/zfblast";

  
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfcore-v1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-v1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-v1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}