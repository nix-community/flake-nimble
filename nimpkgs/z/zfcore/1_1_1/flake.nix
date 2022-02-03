{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';
  inputs.src-zfcore-1_1_1.flake = false;
  inputs.src-zfcore-1_1_1.type = "github";
  inputs.src-zfcore-1_1_1.owner = "zendbit";
  inputs.src-zfcore-1_1_1.repo = "nim.zfcore";
  inputs.src-zfcore-1_1_1.ref = "refs/tags/1.1.1";
  
  
  inputs."zfblast".url = "path:../../../z/zfblast";
  inputs."zfblast".type = "github";
  inputs."zfblast".owner = "riinr";
  inputs."zfblast".repo = "flake-nimble";
  inputs."zfblast".ref = "flake-pinning";
  inputs."zfblast".dir = "nimpkgs/z/zfblast";

  
  inputs."uri3".url = "path:../../../u/uri3";
  inputs."uri3".type = "github";
  inputs."uri3".owner = "riinr";
  inputs."uri3".repo = "flake-nimble";
  inputs."uri3".ref = "flake-pinning";
  inputs."uri3".dir = "nimpkgs/u/uri3";

  
  inputs."stdext".url = "path:../../../s/stdext";
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  outputs = { self, nixpkgs, src-zfcore-1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfcore-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfcore-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}