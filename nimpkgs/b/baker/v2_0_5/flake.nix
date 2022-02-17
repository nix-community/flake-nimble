{
  description = ''Static website generation'';
  inputs.src-baker-v2_0_5.flake = false;
  inputs.src-baker-v2_0_5.type = "github";
  inputs.src-baker-v2_0_5.owner = "jasonrbriggs";
  inputs.src-baker-v2_0_5.repo = "baker";
  inputs.src-baker-v2_0_5.ref = "refs/tags/v2.0.5";
  
  
  inputs."proton".type = "github";
  inputs."proton".owner = "riinr";
  inputs."proton".repo = "flake-nimble";
  inputs."proton".ref = "flake-pinning";
  inputs."proton".dir = "nimpkgs/p/proton";

  
  inputs."https://github.com/docopt/docopt.nim".type = "github";
  inputs."https://github.com/docopt/docopt.nim".owner = "riinr";
  inputs."https://github.com/docopt/docopt.nim".repo = "flake-nimble";
  inputs."https://github.com/docopt/docopt.nim".ref = "flake-pinning";
  inputs."https://github.com/docopt/docopt.nim".dir = "nimpkgs/h/https://github.com/docopt/docopt.nim";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";

  
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  
  inputs."timezones".type = "github";
  inputs."timezones".owner = "riinr";
  inputs."timezones".repo = "flake-nimble";
  inputs."timezones".ref = "flake-pinning";
  inputs."timezones".dir = "nimpkgs/t/timezones";

  
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-baker-v2_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v2_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v2_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}