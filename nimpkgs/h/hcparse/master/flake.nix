{
  description = ''High-level nim wrapper for C/C++ parsing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hcparse-master.flake = false;
  inputs.src-hcparse-master.type = "github";
  inputs.src-hcparse-master.owner = "haxscramper";
  inputs.src-hcparse-master.repo = "hcparse";
  inputs.src-hcparse-master.ref = "refs/heads/master";
  inputs.src-hcparse-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."hnimast".type = "github";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".repo = "flake-nimble";
  inputs."hnimast".ref = "flake-pinning";
  inputs."hnimast".dir = "nimpkgs/h/hnimast";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."htsparse".type = "github";
  inputs."htsparse".owner = "riinr";
  inputs."htsparse".repo = "flake-nimble";
  inputs."htsparse".ref = "flake-pinning";
  inputs."htsparse".dir = "nimpkgs/h/htsparse";
  inputs."htsparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htsparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/haxscramper/frosty".type = "github";
  inputs."https://github.com/haxscramper/frosty".owner = "riinr";
  inputs."https://github.com/haxscramper/frosty".repo = "flake-nimble";
  inputs."https://github.com/haxscramper/frosty".ref = "flake-pinning";
  inputs."https://github.com/haxscramper/frosty".dir = "nimpkgs/h/https://github.com/haxscramper/frosty";
  inputs."https://github.com/haxscramper/frosty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/haxscramper/frosty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hcparse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hcparse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}