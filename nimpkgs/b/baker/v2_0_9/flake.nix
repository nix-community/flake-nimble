{
  description = ''Static website generation'';
  inputs.src-baker-v2_0_9.flake = false;
  inputs.src-baker-v2_0_9.type = "github";
  inputs.src-baker-v2_0_9.owner = "jasonrbriggs";
  inputs.src-baker-v2_0_9.repo = "baker";
  inputs.src-baker-v2_0_9.ref = "refs/tags/v2.0.9";
  
  
  inputs."proton".type = "github";
  inputs."proton".owner = "riinr";
  inputs."proton".repo = "flake-nimble";
  inputs."proton".ref = "flake-pinning";
  inputs."proton".dir = "nimpkgs/p/proton";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  
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

  outputs = { self, nixpkgs, src-baker-v2_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-baker-v2_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-baker-v2_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}