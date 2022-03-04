{
  description = ''Static website generation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-baker-v2_0_1.flake = false;
  inputs.src-baker-v2_0_1.type = "github";
  inputs.src-baker-v2_0_1.owner = "jasonrbriggs";
  inputs.src-baker-v2_0_1.repo = "baker";
  inputs.src-baker-v2_0_1.ref = "refs/tags/v2.0.1";
  inputs.src-baker-v2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."proton".type = "github";
  inputs."proton".owner = "riinr";
  inputs."proton".repo = "flake-nimble";
  inputs."proton".ref = "flake-pinning";
  inputs."proton".dir = "nimpkgs/p/proton";
  inputs."proton".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/docopt/docopt.nim".type = "github";
  inputs."https://github.com/docopt/docopt.nim".owner = "riinr";
  inputs."https://github.com/docopt/docopt.nim".repo = "flake-nimble";
  inputs."https://github.com/docopt/docopt.nim".ref = "flake-pinning";
  inputs."https://github.com/docopt/docopt.nim".dir = "nimpkgs/h/https://github.com/docopt/docopt.nim";
  inputs."https://github.com/docopt/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/docopt/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."timezones".type = "github";
  inputs."timezones".owner = "riinr";
  inputs."timezones".repo = "flake-nimble";
  inputs."timezones".ref = "flake-pinning";
  inputs."timezones".dir = "nimpkgs/t/timezones";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-baker-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-baker-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}